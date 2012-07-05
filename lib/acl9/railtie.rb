module Acl9
  class Railtie < Rails::Railtie
    initializer "acl9.configure_rails" do
      ActiveSupport.on_load(:active_record) do
        ActiveRecord::Base.send(:include, Acl9::ModelExtensions)
      end
      ActiveSupport.on_load(:action_pack) do
        ActionController::Base.send(:include, Acl9::ControllerExtensions)
      end
    end

    config.acl9 = ActiveSupport::OrderedOptions.new

    #Default config values
    config.acl9.default_role_class_name = 'Role'
    config.acl9.default_subject_class_name = 'User'
    config.acl9.default_subject_method = :current_user
    config.acl9.default_association_name = :role_objects
    config.acl9.protect_global_roles = false
  end
end
