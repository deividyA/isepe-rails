require "application_system_test_case"

class ClassroomStudentsTest < ApplicationSystemTestCase
  setup do
    @classroom_student = classroom_students(:one)
  end

  test "visiting the index" do
    visit classroom_students_url
    assert_selector "h1", text: "Classroom students"
  end

  test "should create classroom student" do
    visit classroom_students_url
    click_on "New classroom student"

    fill_in "Classroom", with: @classroom_student.classroom_id
    fill_in "Student", with: @classroom_student.student_id
    click_on "Create Classroom student"

    assert_text "Classroom student was successfully created"
    click_on "Back"
  end

  test "should update Classroom student" do
    visit classroom_student_url(@classroom_student)
    click_on "Edit this classroom student", match: :first

    fill_in "Classroom", with: @classroom_student.classroom_id
    fill_in "Student", with: @classroom_student.student_id
    click_on "Update Classroom student"

    assert_text "Classroom student was successfully updated"
    click_on "Back"
  end

  test "should destroy Classroom student" do
    visit classroom_student_url(@classroom_student)
    click_on "Destroy this classroom student", match: :first

    assert_text "Classroom student was successfully destroyed"
  end
end
