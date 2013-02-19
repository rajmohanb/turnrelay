class AddAllocAndBandwidthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :allocs, :integer
    add_column :users, :active_allocs, :integer
    add_column :users, :bandwidth_used, :integer
  end
end
