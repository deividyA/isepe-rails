class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.references :person, null: false, foreign_key: true
      t.string :graduation

      t.timestamps
    end
  end
end
