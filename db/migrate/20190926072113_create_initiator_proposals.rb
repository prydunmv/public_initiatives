class CreateInitiatorProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :initiator_proposals do |t|
      t.references :idea, foreign_key: true
      t.references :account, foreign_key: true
      t.text :plan

      t.timestamps
    end
  end
end
