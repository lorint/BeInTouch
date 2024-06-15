class CreateEvent < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:events)

    create_table :events do |t|
      t.string :name
      t.timestamp :dt

      t.timestamps
    end
  end
end
