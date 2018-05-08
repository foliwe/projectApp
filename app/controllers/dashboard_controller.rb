class DashboardController < ApplicationController
  def index
    @projects = Project.all
    @employees = Employee.all
  end
end
