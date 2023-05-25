require "test_helper"

class ClassroomTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classroom_teacher = classroom_teachers(:one)
  end

  test "should get index" do
    get classroom_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_classroom_teacher_url
    assert_response :success
  end

  test "should create classroom_teacher" do
    assert_difference("ClassroomTeacher.count") do
      post classroom_teachers_url, params: { classroom_teacher: { classroom_id: @classroom_teacher.classroom_id, subject_id: @classroom_teacher.subject_id, teacher_id: @classroom_teacher.teacher_id } }
    end

    assert_redirected_to classroom_teacher_url(ClassroomTeacher.last)
  end

  test "should show classroom_teacher" do
    get classroom_teacher_url(@classroom_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_classroom_teacher_url(@classroom_teacher)
    assert_response :success
  end

  test "should update classroom_teacher" do
    patch classroom_teacher_url(@classroom_teacher), params: { classroom_teacher: { classroom_id: @classroom_teacher.classroom_id, subject_id: @classroom_teacher.subject_id, teacher_id: @classroom_teacher.teacher_id } }
    assert_redirected_to classroom_teacher_url(@classroom_teacher)
  end

  test "should destroy classroom_teacher" do
    assert_difference("ClassroomTeacher.count", -1) do
      delete classroom_teacher_url(@classroom_teacher)
    end

    assert_redirected_to classroom_teachers_url
  end
end
