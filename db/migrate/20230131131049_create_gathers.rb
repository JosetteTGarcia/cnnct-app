class CreateGathers < ActiveRecord::Migration[6.1]
  def change
    create_table :gathers do |t|
      t.integer :creator_id
      t.integer :activity_id
      t.text :gather_point
      t.boolean :active

      t.timestamps
    end
  end
end
