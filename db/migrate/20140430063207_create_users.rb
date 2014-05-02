class CreateUsers < ActiveRecord::Migration
  def up
    create_table :Users do |t|
      t.string :email 
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :institution

      t.timestamps
    end
  end

  def down
    drop_table :Users 
  end
end
