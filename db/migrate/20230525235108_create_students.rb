class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.references :person, null: false, foreign_key: true
      t.string :school_education

      t.timestamps
    end
  end
end
