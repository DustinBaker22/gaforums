class CreateWdiposts < ActiveRecord::Migration
  def change
    create_table :wdiposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
