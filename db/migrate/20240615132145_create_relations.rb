class CreateRelations < ActiveRecord::Migration[7.1]
  def change
    return unless reverting? || !table_exists?(:relations)

    create_table :relations do |t|
      t.string :name
    end
  end
end
