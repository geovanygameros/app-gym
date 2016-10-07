class AgregarCampoBirthDateAMembers < ActiveRecord::Migration
  def change
    add_column :members, :birth_date, :date, null: false
  end
end
