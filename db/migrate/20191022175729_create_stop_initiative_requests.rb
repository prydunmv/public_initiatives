class CreateStopInitiativeRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :stop_initiative_requests do |t|
      t.references :idea, foreign_key: true
      t.boolean :resolved

      t.timestamps
    end
  end
end
