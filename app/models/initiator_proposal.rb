class InitiatorProposal < ApplicationRecord
	acts_as_votable
  belongs_to :idea
  belongs_to :account
end
