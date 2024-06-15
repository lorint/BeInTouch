class CreatePalxpassion < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:pal_passions)

    create_table :pal_passions do |t|
      t.references :pal, null: false
      t.references :passion, null: false
      t.string :notes

      t.timestamps
    end
  end
end
