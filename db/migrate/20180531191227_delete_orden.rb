class DeleteOrden < ActiveRecord::Migration[5.1]
  def change
    drop_table :ordens
  end
end
