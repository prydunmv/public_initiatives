class Initiative < ApplicationRecord
  belongs_to :idea
  belongs_to :account
  belongs_to :initiator_proposal
  has_many :implementation_stages
end
