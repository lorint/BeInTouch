class CreateReminder < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:reminders)

    create_table :reminders do |t|
      t.references :person, null: false, foreign_key: true
      t.references :person_occasion, null: false, foreign_key: true
      t.integer :remind_day_offset

      t.timestamps
    end
  end
end
