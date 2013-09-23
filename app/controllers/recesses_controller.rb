class RecessesController < ApplicationController
  before_action :set_member
  before_action :set_members_course
  before_action :set_recess, only: [:show, :edit, :update, :destroy]

  # GET /recesses
  # GET /recesses.json
  def index
    #@recesses = Recess.all
    @recesses = @members_course.recesses
  end

  # GET /recesses/1
  # GET /recesses/1.json
  def show
  end

  # GET /recesses/new
  def new
    @recess = @members_course.recesses.build(status: "0")
  end

  # GET /recesses/1/edit
  def edit
  end

  # POST /recesses
  # POST /recesses.json
  def create
    @recess = Recess.new(recess_params)

    respond_to do |format|
      if @recess.save
        format.html { redirect_to member_course_recesses_path(@member, @members_course), notice: 'Recess was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recess }
      else
        format.html { render action: 'new' }
        format.json { render json: @recess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recesses/1
  # PATCH/PUT /recesses/1.json
  def update
    respond_to do |format|
      if @recess.update(recess_params)
        format.html { redirect_to member_course_recess_path(@member, @members_course, @recess), notice: 'Recess was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recesses/1
  # DELETE /recesses/1.json
  def destroy
    @recess.destroy
    respond_to do |format|
      format.html { redirect_to member_course_recesses_path(@member, @members_course) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:member_id])
    end

    def set_members_course
      @members_course = MembersCourse.find(params[:course_id])
    end

    def set_recess
      @recess = Recess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recess_params
      params.require(:recess).permit(:members_course_id, :month, :status, :note)
    end
end
