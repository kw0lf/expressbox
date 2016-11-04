class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.references :prealert, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
