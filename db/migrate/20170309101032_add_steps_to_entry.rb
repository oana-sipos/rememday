class AddStepsToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :steps, :int
  end
end
