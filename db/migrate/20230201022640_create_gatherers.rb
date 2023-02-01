class CreateGatherers < ActiveRecord::Migration[6.1]
  def change
    create_table :gatherers do |t|
      t.references :attended_gather, references: :gathers, foreign_key: {to_table: :gathers}
      t.references :gather_attendee, references: :users, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
