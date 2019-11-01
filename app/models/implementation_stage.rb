class ImplementationStage < ApplicationRecord
  belongs_to :initiative

  validates :title, :body, :start_date, :end_date, presence: true
end
