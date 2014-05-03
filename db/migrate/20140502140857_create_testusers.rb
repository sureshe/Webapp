class CreateTestusers < ActiveRecord::Migration
  def change
    create_table :testusers do |t|
      	t.string :email 
      	t.string :password
      	t.string :first_name
      	t.string :last_name
      	t.string :institution
        t.string :role
        t.string :role_name
        t.string :gadget_app
        t.string :name_of_the_tool
        t.string :analysis_group

      t.timestamps
    end
  end
end
