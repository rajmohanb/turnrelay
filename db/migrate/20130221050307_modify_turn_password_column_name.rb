class ModifyTurnPasswordColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :password, :turn_secret
  end
end
