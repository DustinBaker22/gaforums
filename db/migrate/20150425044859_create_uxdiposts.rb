class CreateUxdiposts < ActiveRecord::Migration
  def change
    create_table :uxdiposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
