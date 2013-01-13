class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :reload_rails_admin, if: :rails_admin_path?

  layout 'application'

private

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
