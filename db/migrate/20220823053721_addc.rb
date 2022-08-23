class Addc < ActiveRecord::Migration[7.0]
  def change
    add_column :events,:event_discription,:string
  end
end
