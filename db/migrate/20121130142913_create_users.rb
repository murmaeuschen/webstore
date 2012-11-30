class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :role
      t.string :email
      t.string :region
      t.string :password

      t.timestamps
    end
  end
end
