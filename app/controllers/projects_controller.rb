class ProjectsController < ApplicationController
  before_filter :authenticate_user!
   before_action :all_projects, only: [:index, :create, :update, :destroy]
  before_action :set_project, only: [:edit, :update, :destroy]
  respond_to :html, :js, :json

  
  def index
    @projects = Project.all
  end

  def task_show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  
  end

  def create
    @project = Project.new(project_params)

  end

  def abc
    @project = Project.new
  end
  
  def update
    @project = Project.find(params[:id])
    @project.update_attributes(project_params)
    
  end

  
  def destroy
    @project.destroy
    
  end

  private
    def all_projects
      @projects = Project.all
    end
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name,:task_name,:specific_task)
    
    end
  
end  