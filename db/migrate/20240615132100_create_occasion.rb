class CreateOccasion < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:occasions)

    create_table :occasions do |t|
      t.string :name
      t.date :dt

      t.timestamps
    end
  end
end
