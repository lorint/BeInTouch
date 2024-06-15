class CreatePerson < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:people)

    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.float :latitude
      t.float :longitude
      t.text :bio

      t.timestamps
    end
  end
end
