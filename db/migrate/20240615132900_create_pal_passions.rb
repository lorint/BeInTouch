class CreatePalPassions < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:pal_passions)

    create_table :pal_passions do |t|
      t.references :pal, null: false, foreign_key: true
      t.references :passion, null: false, foreign_key: true
      t.string :notes

      t.timestamps
    end
  end
end
