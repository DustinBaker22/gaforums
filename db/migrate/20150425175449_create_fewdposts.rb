class CreateFewdposts < ActiveRecord::Migration
  def change
    create_table :fewdposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
