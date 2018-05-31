class CreateOrdens < ActiveRecord::Migration[5.1]
  def change
    create_table :ordens do |t|
      t.integer :ticket_id
      t.integer :product_id
      t.float :total
      t.integer :quantity

      t.timestamps
    end
  end
end
