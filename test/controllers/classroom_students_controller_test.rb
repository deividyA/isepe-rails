require "test_helper"

class ClassroomStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classroom_student = classroom_students(:one)
  end

  test "should get index" do
    get classroom_students_url
    assert_response :success
  end

  test "should get new" do
    get new_classroom_student_url
    assert_response :success
  end

  test "should create classroom_student" do
    assert_difference("ClassroomStudent.count") do
      post classroom_students_url, params: { classroom_student: { classroom_id: @classroom_student.classroom_id, student_id: @classroom_student.student_id } }
    end

    assert_redirected_to classroom_student_url(ClassroomStudent.last)
  end

  test "should show classroom_student" do
    get classroom_student_url(@classroom_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_classroom_student_url(@classroom_student)
    assert_response :success
  end

  test "should update classroom_student" do
    patch classroom_student_url(@classroom_student), params: { classroom_student: { classroom_id: @classroom_student.classroom_id, student_id: @classroom_student.student_id } }
    assert_redirected_to classroom_student_url(@classroom_student)
  end

  test "should destroy classroom_student" do
    assert_difference("ClassroomStudent.count", -1) do
      delete classroom_student_url(@classroom_student)
    end

    assert_redirected_to classroom_students_url
  end
end
