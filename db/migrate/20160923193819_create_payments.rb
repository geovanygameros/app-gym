class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|

      t.integer :membership, null:false
      t.integer :amount, null:false
      t.date :validity, null:false

      t.timestamps null: false
    end
  end
end
