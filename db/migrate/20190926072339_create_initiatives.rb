class CreateInitiatives < ActiveRecord::Migration[5.2]
  def change
    create_table :initiatives do |t|
      t.references :idea, foreign_key: true
      t.references :account, foreign_key: true
      t.references :initiator_proposal, foreign_key: true

      t.timestamps
    end
  end
end
