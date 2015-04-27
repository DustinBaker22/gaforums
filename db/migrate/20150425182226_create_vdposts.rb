class CreateVdposts < ActiveRecord::Migration
  def change
    create_table :vdposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
