class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :email
      t.string :last_name
      t.string :first_name
      t.text :resume
      t.integer :job_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
