class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :payment_url
      t.integer :payment_id

      t.timestamps
    end
  end
end
