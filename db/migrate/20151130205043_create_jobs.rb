class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :state
      t.string :city
      t.float :compensation
      t.boolean :is_internal
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
