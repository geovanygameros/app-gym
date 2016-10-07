class AgregarRelacionPaymentsClients < ActiveRecord::Migration
  def change
    add_reference :payments, :member, index: true, null:false
  end
end
