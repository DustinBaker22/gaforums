class CreateBdsposts < ActiveRecord::Migration
  def change
    create_table :bdsposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
