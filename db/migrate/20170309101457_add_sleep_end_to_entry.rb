class AddSleepEndToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :sleep_end, :time
  end
end
