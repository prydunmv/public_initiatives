class InitiatorProposal < ApplicationRecord
	acts_as_votable
  belongs_to :idea
  belongs_to :account

  def approve
    Initiative.create(initiator_proposal_id: id, idea_id: idea_id, account_id: account_id)
  end
end
