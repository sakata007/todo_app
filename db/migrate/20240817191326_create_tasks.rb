class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :trip, null: false, foreign_key: { on_delete: :cascade }
      t.string :name, limit: 100
      t.string :manager, limit: 50
      t.date :due_date, null: false
      t.boolean :is_completed, default: false
      t.timestamps
    end
  end
end
