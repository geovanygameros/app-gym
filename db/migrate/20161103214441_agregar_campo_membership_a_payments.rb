class AgregarCampoMembershipAPayments < ActiveRecord::Migration
  def change
    add_column :payments, :membership, :integer
  end
end
