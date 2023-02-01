class CreateInterestGathers < ActiveRecord::Migration[6.1]
  def change
    create_table :interest_gathers do |t|
      t.string :gather_id
      t.string :interest_id

      t.timestamps
    end
  end
end
