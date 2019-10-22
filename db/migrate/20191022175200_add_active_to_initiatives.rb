class AddActiveToInitiatives < ActiveRecord::Migration[5.2]
  def change
    add_column :initiatives, :active, :boolean
  end
end
