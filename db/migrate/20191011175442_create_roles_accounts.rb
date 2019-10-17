class CreateRolesAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts_roles do |t|
    	t.integer :account_id
    	t.integer :role_id
    end
  end
end
