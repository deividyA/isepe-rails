class CreateClassroomTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :classroom_teachers do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :classroom, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
