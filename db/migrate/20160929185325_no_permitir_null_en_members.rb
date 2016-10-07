class NoPermitirNullEnMembers < ActiveRecord::Migration
  def change
    change_column_null :members, :name, :string, :null =>false
    change_column_null :members, :last_name, :string, :null =>false
    change_column_null :members, :gender, :boolean, :null =>false
    change_column_null :members, :email, :string, :null =>false
    change_column_null :members, :status, :integer, :null =>false
  end
end
