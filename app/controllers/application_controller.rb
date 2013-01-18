class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :reload_rails_admin, if: :rails_admin_path?

  before_filter :infer_page_title

  layout 'application'

private

  def infer_page_title
    if params[:action] == 'index'
      @title = self.class.name.match(/(.+)Controller/).captures.first
    end
  end

  def reload_rails_admin
    Dir.foreach("#{Rails.root}/app/models") do |model_path|
      RailsAdmin::Config.reset_model(model_path.gsub(/\.rb/,'').classify)
    end
    RailsAdmin::Config::Actions.reset

    load("#{Rails.root}/config/initializers/rails_admin.rb")
  end

  def rails_admin_path?
    controller_path =~ /rails_admin/ && Rails.env == "development"
  end
end
