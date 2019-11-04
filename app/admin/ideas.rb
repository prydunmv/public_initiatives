ActiveAdmin.register Idea do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :autor_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :autor_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  show do
    attributes_table do
      row :title
      row :author_id
      row :description
    end
    panel "Proposals" do
      table_for idea.initiator_proposals do
        column :plan
        column("Votes") { |proposal| proposal.get_likes.size }
        column("Account") { |proposal| link_to "View", admin_account_path(proposal.account) }
        column('Proposal') do |proposal|
          link_to "View", admin_initiator_proposal_path(proposal.account)
        end
        column('Action') do |proposal|
          link_to "Approve", approve_admin_initiator_proposal_path(proposal)
        end
      end
    end
    active_admin_comments
  end
end
