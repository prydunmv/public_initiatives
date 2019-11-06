class RenameColumnInIdeas < ActiveRecord::Migration[5.2]
  def change
    rename_column :ideas, :autor_id, :author_id
  end
end
