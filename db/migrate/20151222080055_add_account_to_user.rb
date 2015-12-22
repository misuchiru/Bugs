class AddAccountToUser < ActiveRecord::Migration
  def change
  	add_column :users, :account, :string, :unique => true
  end
end
