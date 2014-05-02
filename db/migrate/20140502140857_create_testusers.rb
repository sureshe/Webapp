class CreateTestusers < ActiveRecord::Migration
  def change
    create_table :testusers do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
