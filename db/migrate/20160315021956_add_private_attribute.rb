class AddPrivateAttribute < ActiveRecord::Migration
  def change
    add_column :pools, :is_public, :boolean, default: true
  end
end
