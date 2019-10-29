class CreateImplementationStages < ActiveRecord::Migration[5.2]
  def change
    create_table :implementation_stages do |t|
      t.references :initiative, foreign_key: true
      t.string :title
      t.text   :body
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
