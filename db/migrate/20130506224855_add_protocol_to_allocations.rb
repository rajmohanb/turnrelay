class AddProtocolToAllocations < ActiveRecord::Migration
  def change
    add_column :allocations, :protocol, :string
  end
end
