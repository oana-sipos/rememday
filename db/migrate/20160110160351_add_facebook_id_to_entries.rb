class AddFacebookIdToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :facebook_id, :string
  end
end
