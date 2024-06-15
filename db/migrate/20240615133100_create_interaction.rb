class CreateInteraction < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:interactions)

    create_table :interactions do |t|
      t.references :event, null: false
      t.references :pal_passion, null: false
      t.string :notes

      t.timestamps
    end
  end
end
