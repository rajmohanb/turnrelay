class AddAllocHandleToAllocations < ActiveRecord::Migration
  def up
    change_table :allocations do |t|
      t.integer :alloc_handle, :limit => 8 
    end
  end

  def down
    remove_column :allocations, :alloc_handle
  end
end
