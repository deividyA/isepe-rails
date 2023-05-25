class ClassroomStudentsController < ApplicationController
  before_action :set_classroom_student, only: %i[ show edit update destroy ]

  # GET /classroom_students or /classroom_students.json
  def index
    @classroom_students = ClassroomStudent.all
  end

  # GET /classroom_students/1 or /classroom_students/1.json
  def show
  end

  # GET /classroom_students/new
  def new
    @classroom_student = ClassroomStudent.new
  end

  # GET /classroom_students/1/edit
  def edit
  end

  # POST /classroom_students or /classroom_students.json
  def create
    @classroom_student = ClassroomStudent.new(classroom_student_params)

    respond_to do |format|
      if @classroom_student.save
        format.html { redirect_to classroom_student_url(@classroom_student), notice: "Classroom student was successfully created." }
        format.json { render :show, status: :created, location: @classroom_student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @classroom_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classroom_students/1 or /classroom_students/1.json
  def update
    respond_to do |format|
      if @classroom_student.update(classroom_student_params)
        format.html { redirect_to classroom_student_url(@classroom_student), notice: "Classroom student was successfully updated." }
        format.json { render :show, status: :ok, location: @classroom_student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @classroom_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classroom_students/1 or /classroom_students/1.json
  def destroy
    @classroom_student.destroy

    respond_to do |format|
      format.html { redirect_to classroom_students_url, notice: "Classroom student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom_student
      @classroom_student = ClassroomStudent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classroom_student_params
      params.require(:classroom_student).permit(:student_id, :classroom_id)
    end
end
