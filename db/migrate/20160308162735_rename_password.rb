class RenamePassword < ActiveRecord::Migration
  def change
    rename_column :users, :pword, :password_digest
  end
end
