class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.integer :followed
      t.integer :following

      t.timestamps null: false
    end
  end
end
