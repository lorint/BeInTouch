class CreatePersonOccasions < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:person_occasions)

    create_table :person_occasions do |t|
      t.references :person, null: false, foreign_key: true
      t.references :occasion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
