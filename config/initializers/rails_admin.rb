RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Event' do
    list do
      field :id
      field :schedule_name
    end
    object_label_method do
      :schedule_name
    end
  end
  config.model 'ActorEvent' do
    list do
      field :actor
      field :schedule_name do
        formatted_value do
          bindings[:object].event
        end
      end
      field :part
    end
    edit do
      field :actor
      field :event do
        formatted_value do
          bindings[:object].event
        end
      end
      field :part
    end
  end
end
