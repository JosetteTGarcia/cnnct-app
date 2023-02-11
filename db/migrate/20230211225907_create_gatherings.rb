class CreateGatherings < ActiveRecord::Migration[6.1]
  def change
    create_table :gatherings do |t|
      t.integer "creator_id"
      t.integer "activity_id"
      t.text "location"
      t.boolean "active"


      t.timestamps
    end
  end
end
