module MainControllerExtensions
  extend ActiveSupport::Concern

  included do
    before_filter :set_model_context, except: RailsAdmin::Config::Actions.all(:root).map(&:action_name)
  end

  def set_model_context
    Thread.current[:abstract_model] = @abstract_model
  end
end

RailsAdmin::MainController.send(:include, MainControllerExtensions)