class CreatePmposts < ActiveRecord::Migration
  def change
    create_table :pmposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
