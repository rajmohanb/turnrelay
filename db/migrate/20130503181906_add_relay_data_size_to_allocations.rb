class AddRelayDataSizeToAllocations < ActiveRecord::Migration
  def change
    add_column :allocations, :ingress_data, :integer
    add_column :allocations, :egress_data, :integer
    add_column :allocations, :total_relay, :integer
  end
end
