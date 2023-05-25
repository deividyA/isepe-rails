require "application_system_test_case"

class ClassroomTeachersTest < ApplicationSystemTestCase
  setup do
    @classroom_teacher = classroom_teachers(:one)
  end

  test "visiting the index" do
    visit classroom_teachers_url
    assert_selector "h1", text: "Classroom teachers"
  end

  test "should create classroom teacher" do
    visit classroom_teachers_url
    click_on "New classroom teacher"

    fill_in "Classroom", with: @classroom_teacher.classroom_id
    fill_in "Subject", with: @classroom_teacher.subject_id
    fill_in "Teacher", with: @classroom_teacher.teacher_id
    click_on "Create Classroom teacher"

    assert_text "Classroom teacher was successfully created"
    click_on "Back"
  end

  test "should update Classroom teacher" do
    visit classroom_teacher_url(@classroom_teacher)
    click_on "Edit this classroom teacher", match: :first

    fill_in "Classroom", with: @classroom_teacher.classroom_id
    fill_in "Subject", with: @classroom_teacher.subject_id
    fill_in "Teacher", with: @classroom_teacher.teacher_id
    click_on "Update Classroom teacher"

    assert_text "Classroom teacher was successfully updated"
    click_on "Back"
  end

  test "should destroy Classroom teacher" do
    visit classroom_teacher_url(@classroom_teacher)
    click_on "Destroy this classroom teacher", match: :first

    assert_text "Classroom teacher was successfully destroyed"
  end
end
