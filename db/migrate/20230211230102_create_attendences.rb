class CreateAttendences < ActiveRecord::Migration[6.1]
  def change
    create_table :attendences do |t|
      t.references :user, null: false, foreign_key: true
      t.references :gathering, null: false, foreign_key: true

      t.timestamps
    end
  end
end
