class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :activity

      t.timestamps null: false
    end
  end
end
