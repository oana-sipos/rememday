class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.date :date
      t.string :memory

      t.timestamps
    end
  end
end
