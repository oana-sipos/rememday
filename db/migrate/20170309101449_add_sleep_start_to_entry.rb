class AddSleepStartToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :sleep_start, :time
  end
end
