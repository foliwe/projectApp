class ProjectsController < ApplicationController
  before_action :find_project ,except: [:index, :new]

  def new
    @project = Project.new
  end

  def index
    @projects = Project.all
  end

  def show
   @total_expenses = @project.expenses.map(&:cost).sum
   @now = Time.now.to_date


  end



  private
  def find_project
    @project = Project.find(params[:id])
  end
end
