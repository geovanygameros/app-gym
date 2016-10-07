class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name,
      t.string :last_name
      t.boolean :gender
      t.string :email
      t.integer :status

      t.timestamps null: false
    end
  end
end
