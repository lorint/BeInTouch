class CreatePersonxoccasion < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:person_occasions)

    create_table :person_occasions do |t|
      t.references :person, null: false
      t.references :occasion, null: false

      t.timestamps
    end
  end
end
