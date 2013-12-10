class ChecklistsController < ApplicationController
  before_action :set_checklist, only: [:show, :edit, :update, :destroy]

  # GET /checklists
  # GET /checklists.json
  def index
    @checklists = Checklist.all
  end

  def complete
    @checklist = Checklist.find(params[:id])
    if (@checklist.completed)
      @checklist.completed = false    
    else
      @checklist.completed = true
    end
    @checklist.save    
  end

  # GET /checklists/1
  # GET /checklists/1.json
  def show
  end

  # GET /checklists/new
  def new    
    if request.xhr?
     @checklist = Checklist.new
     @task = params[:task]
   else
    @checklist = Checklist.new
  end 
end

  # GET /checklists/1/edit
  def edit
    if request.xhr? 
      controller=request.fullpath.split('/')    
      @task = controller[2]
   end 
 end

  # POST /checklists
  # POST /checklists.json
  def create
    @checklist = Checklist.new(checklist_params)   
    @task_id = checklist_params[:task_id]       
    if @checklist.save                
     #flash.now[:success] = "Successfully created task." 
   end
 end

  # PATCH/PUT /checklists/1
  # PATCH/PUT /checklists/1.json
  def update    
    if @checklist.update(checklist_params)
      #flash.now[:success] = "Successfully created task." 
    end
  end

  # DELETE /checklists/1
  # DELETE /checklists/1.json
  def destroy
    @checklist.destroy
    respond_to do |format|
      format.html { redirect_to checklists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checklist
      @checklist = Checklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checklist_params
      params.require(:checklist).permit(:description, :completed, :task_id)
    end
  end
