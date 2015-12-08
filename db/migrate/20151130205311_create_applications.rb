class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :email
      t.string :last_name
      t.string :first_name
      t.text :resume

      t.timestamps null: false
    end
  end
end
