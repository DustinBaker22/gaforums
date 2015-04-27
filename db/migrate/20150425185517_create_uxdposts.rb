class CreateUxdposts < ActiveRecord::Migration
  def change
    create_table :uxdposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
