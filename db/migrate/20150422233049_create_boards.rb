class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
    	t.string :title
    	t.string :description
    	t.integer :thread_count
    	t.integer :post_count
      t.timestamps null: false
    end
  end
end
