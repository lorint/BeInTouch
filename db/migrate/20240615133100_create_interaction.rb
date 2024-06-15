class CreateInteraction < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:interactions)

    create_table :interactions do |t|
      t.references :event, null: false, foreign_key: true
      t.references :pal_passion, null: false, foreign_key: true
      t.string :notes

      t.timestamps
    end
  end
end
