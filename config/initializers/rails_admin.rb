# RailsAdmin config file. Generated on January 02, 2013 21:50
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|


  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Jl Compliance', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, 'User'

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, 'User'

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
  # config.default_items_per_page = 20

  # Exclude specific models (keep the others):
  # config.excluded_models = []

  # Include specific models (exclude the others):
  # config.included_models = []

  # Label methods for model instances:
  config.label_methods << :rails_admin_object_label # Default is [:name, :title]


  ################  Model configuration  ################

  # Each model configuration can alternatively:
  #   - stay here in a `config.model 'ModelName' do ... end` block
  #   - go in the model definition file in a `rails_admin do ... end` block

  # This is your choice to make:
  #   - This initializer is loaded once at startup (modifications will show up when restarting the application) but all RailsAdmin configuration would stay in one place.
  #   - Models are reloaded at each request in development mode (when modified), which may smooth your RailsAdmin development workflow.


  # Now you probably need to tour the wiki a bit: https://github.com/sferik/rails_admin/wiki
  # Anyway, here is how RailsAdmin saw your application's models when you ran the initializer:

  config.compact_show_view = false
  
  config.total_columns_width = 1000

  config.navigation_static_links = {
    'For Android' => 'http://jl-compliance-staging.herokuapp.com/downloads/judlau-compliance-1.0.apk'
  }

  config.navigation_static_label = "Download Mobile App"

  config.model 'User' do
    navigation_label 'Administration App'
    label 'User Accounts'
  end

  config.model 'Photo' do
    visible false
    include_all_fields
    nested do
      field :photoable do
        visible false
      end
    end
  end

  config.model 'SubcontractorAtJob' do
    visible false
  end
  config.model 'Equipment' do
    visible false
  end
  config.model 'Scope' do
    visible false
  end

  config.model 'Job' do
    
    field :name
    field :subcontractors
    field :subcontractor_trucks do
      label "Truckers"  
      searchable :driver_name
    end
    field :supplier_trucks

    show do
      field :subcontractors do
        visible false
      end
      field :subcontractor_at_jobs do
        label 'Subcontractors'
        pretty_value do
          model_config = RailsAdmin::AbstractModel.new(name.to_s.camelize.singularize).config
          bindings[:view].render(
            partial: 'admin/has_many_association_tabbed',
            locals: { objects: self.value, model_config: model_config }
          )
        end
      end
      include_all_fields
    end

    edit do
      field :subcontractors do
        visible false
      end
      field :subcontractor_at_jobs do
        label 'Subcontractors'
      end
    end
  end
  config.model 'Subcontractor' do
    
  end

  config.model 'SubcontractorTruck' do
  end
  config.model 'SupplierTruck' do
  end
  config.model 'Ticket' do
    parent 'SupplierTruck'
  end


end
