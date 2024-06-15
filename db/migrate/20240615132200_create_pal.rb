class CreatePal < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:pals)

    create_table :pals do |t|
      t.references :friender, foreign_key: { to_table: :people }
      t.references :friendee, foreign_key: { to_table: :people }
      t.references :relation, foreign_key: true

      t.timestamps
    end
  end
end
