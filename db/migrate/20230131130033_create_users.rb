class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :img
      t.string :first_name
      t.string :last_name
      t.string :state
      t.string :city
      t.string :bio

      t.timestamps
    end
  end
end
