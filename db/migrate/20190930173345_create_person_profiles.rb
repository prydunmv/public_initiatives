class CreatePersonProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :person_profiles do |t|
      t.references :account_id, foreign_key: true
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
