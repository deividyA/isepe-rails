class ClassroomTeacher < ApplicationRecord
  belongs_to :teacher
  belongs_to :classroom
  belongs_to :subject
end
