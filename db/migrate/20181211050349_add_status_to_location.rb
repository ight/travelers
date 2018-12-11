class AddStatusToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :status, :integer, null: false, default: 0
  end
end
