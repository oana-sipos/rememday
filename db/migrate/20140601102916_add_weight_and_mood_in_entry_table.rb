class AddWeightAndMoodInEntryTable < ActiveRecord::Migration
  def change
    change_table :entries do |t|
      t.integer :mood
      t.decimal  :weight
    end
  end
end
