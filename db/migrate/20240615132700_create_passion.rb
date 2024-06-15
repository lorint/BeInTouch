class CreatePassion < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:passions)

    create_table :passions do |t|
      t.string :name
      t.references :created_by, foreign_key: { to_table: :people }

      t.timestamps
    end
  end
end
