class CreateMdposts < ActiveRecord::Migration
  def change
    create_table :mdposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
