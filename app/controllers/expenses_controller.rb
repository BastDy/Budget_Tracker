class ExpensesController < ApplicationController
  before_action :set_user, only: [:create, :new, :index]

  def index
    @expenses = Expenses.all.where(user: current_user)
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(set_params)
    @expense.user = @user
    if @expense.type_of_expense == "Dépense"
      @expense.amount = -@expense.amount
    end
    @expense.month_and_years(@expense)
    if @expense.save
      @user.total_amount += @expense.amount
      @user.save
      redirect_to dashboards_path
    else
      render :new, unprocessable: :entity
    end
  end


  private

  def set_user
    @user = current_user
  end
  def set_params
    params.require(:expense).permit(:amount, :description, :expenses_date, :type_of_expense, :categorie_id)
  end
end
