class DashboardsController < ApplicationController
  before_action :set_user, only: [:index]

  def index
    @categories = Categorie.all.where(user: @current_user)
    @expenses = Expense.all.where(user: @current_user)
    @total_expenses = @expenses.where(type_of_expense: "Dépense").map(&:amount).sum
  end

  private

  def set_user
    @user = current_user
  end
end
