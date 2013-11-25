class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show  
      @task = Task.find(params[:id])
    @checklist = @task.checklists.new
  end

  # GET /tasks/new
  def new
    if request.xhr?
       @task = Task.new 
       @list = params[:list]
    else
       @task = Task.new 
    end 
end

  # GET /tasks/1/edit
  def edit  
    @task = Task.find(params[:id])
    @checklist = @task.checklists.new   
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    @list_id = task_params[:list_id]    
      if @task.save                
         flash.now[:success] = "Successfully created task." 
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
     if @task.update(task_params)
      flash.now[:success] = "Successfully created task." 
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:title, :description, :date, :move, :color_id, :list_id)
    end
  end
