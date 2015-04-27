class CreateWelcomeposts < ActiveRecord::Migration
  def change
    create_table :welcomeposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
