class DashboardsController < ApplicationController
  before_action :set_user, only: [:index]

  def index
    @categories = Categorie.where(user: @current_user)
    @expenses = Expense.where(user: @current_user)
  end

  private

  def set_user
    @user = current_user
  end
end
