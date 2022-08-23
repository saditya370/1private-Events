class CreateAttendeEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :attende_events do |t|

      t.timestamps
    end
  end
end
