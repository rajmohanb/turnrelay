class AddTurnParamsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :max_allocs, :integer
    add_column :users, :max_concur_allocs, :integer
    add_column :users, :realm, :string
    add_column :users, :username, :string
    add_column :users, :password, :string
    add_column :users, :def_lifetime, :integer
    add_column :users, :max_bandwidth, :integer
  end
end
