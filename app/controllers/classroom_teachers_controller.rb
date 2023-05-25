class ClassroomTeachersController < ApplicationController
  before_action :set_classroom_teacher, only: %i[ show edit update destroy ]

  # GET /classroom_teachers or /classroom_teachers.json
  def index
    @classroom_teachers = ClassroomTeacher.all
  end

  # GET /classroom_teachers/1 or /classroom_teachers/1.json
  def show
  end

  # GET /classroom_teachers/new
  def new
    @classroom_teacher = ClassroomTeacher.new
  end

  # GET /classroom_teachers/1/edit
  def edit
  end

  # POST /classroom_teachers or /classroom_teachers.json
  def create
    @classroom_teacher = ClassroomTeacher.new(classroom_teacher_params)

    respond_to do |format|
      if @classroom_teacher.save
        format.html { redirect_to classroom_teacher_url(@classroom_teacher), notice: "Classroom teacher was successfully created." }
        format.json { render :show, status: :created, location: @classroom_teacher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @classroom_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classroom_teachers/1 or /classroom_teachers/1.json
  def update
    respond_to do |format|
      if @classroom_teacher.update(classroom_teacher_params)
        format.html { redirect_to classroom_teacher_url(@classroom_teacher), notice: "Classroom teacher was successfully updated." }
        format.json { render :show, status: :ok, location: @classroom_teacher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @classroom_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classroom_teachers/1 or /classroom_teachers/1.json
  def destroy
    @classroom_teacher.destroy

    respond_to do |format|
      format.html { redirect_to classroom_teachers_url, notice: "Classroom teacher was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom_teacher
      @classroom_teacher = ClassroomTeacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classroom_teacher_params
      params.require(:classroom_teacher).permit(:teacher_id, :classroom_id, :subject_id)
    end
end
