class Idea < ApplicationRecord
   acts_as_votable
   has_many :initiator_proposals
   has_many :initiatives
end
