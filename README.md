### Connct App

checking repo connection

<!-- users 
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
    end -->


gathering

def change
    create_table :gathers do |t|
      t.integer :creator_id
      t.integer :activity_id
      t.text :gather_point
      t.boolean :active

      t.timestamps
    end

<!-- interest
def change
    create_table :interests do |t|
      t.string :i_type

      t.timestamps
    end -->


<!-- activiies
def change
    create_table :activities do |t|
      t.string :a_type

      t.timestamps
    end -->

    attendence

    def change
    create_table :gatherers do |t|
      t.references :attended_gather, references: :gathers, foreign_key: {to_table: :gathers}
      t.references :gather_attendee, references: :users, foreign_key: {to_table: :users}

      t.timestamps
    end


