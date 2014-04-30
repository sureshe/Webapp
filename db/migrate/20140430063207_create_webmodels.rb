class CreateWebmodels < ActiveRecord::Migration
  def change
    create_table :webmodels do |t|
      t.string :email 
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :institution

      t.timestamps
    end
  end
end
