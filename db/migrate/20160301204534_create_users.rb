class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :pword
      t.string :description

      t.timestamps null: false
    end
  end
end
