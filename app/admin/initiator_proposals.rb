ActiveAdmin.register InitiatorProposal do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :idea_id, :account_id, :plan
  #
  # or
  #
  # permit_params do
  #   permitted = [:idea_id, :account_id, :plan]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  member_action :approve, method: :get do
    initiative = resource.approve
    redirect_to admin_initiative_path(initiative), notice: "Initiative created"
  end

end
