class CreateAnyposts < ActiveRecord::Migration
  def change
    create_table :anyposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
