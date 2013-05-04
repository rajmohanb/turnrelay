class AddUniquesessValidationToTurnUsername < ActiveRecord::Migration
  def up
    change_column :users, :username, :string, unique: true
  end

  def down
    change_column :users, :username, :string
  end
end
