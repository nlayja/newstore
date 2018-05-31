class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.date :date_ticket
      t.float :total
      t.integer :user_id

      t.timestamps
    end
  end
end
