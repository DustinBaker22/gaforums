class CreateJobposts < ActiveRecord::Migration
  def change
    create_table :jobposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
