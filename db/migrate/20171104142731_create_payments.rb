class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :payment_url
      t.integer :payment_id
      t.string :email
      t.float :amount
      t.integer :order_id
      t.datetime :order_timestamp

      t.timestamps
    end
  end
end
