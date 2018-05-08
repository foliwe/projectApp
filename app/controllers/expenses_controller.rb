class ExpensesController < ApplicationController
  def create

    @project = Project.find(params[:project_id])
    @expense = @project.expenses.create(expense_params)


    redirect_to project_path(@project)
  end
  def destroy
    @project = Project.find(params[:project_id])
    @expense = @project.expenses.find(params[:id])
    @expense.destroy
    redirect_to project_path(@project)
  end
  private
  def expense_params
    params.require(:expense).permit(:item_name,:cost)
  end
end
