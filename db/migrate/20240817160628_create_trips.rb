class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :title, limit: 50, null: false
      t.string :detail, limit: 100
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :image, limit: 255
      t.boolean :has_traveled, null: false, default: false
      t.timestamps
    end
  end
end
