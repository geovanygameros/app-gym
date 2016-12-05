class DeleteMembershipFromPaymentsTable < ActiveRecord::Migration
  def change
    remove_column :payments, :membership
  end
end
