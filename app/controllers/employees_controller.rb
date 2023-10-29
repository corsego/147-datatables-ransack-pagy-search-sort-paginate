class EmployeesController < ApplicationController
  include Pagy::Backend

  def index
    # @employees = Employee.all
    # @q = Employee.ransack(params[:q])
    @q = Employee.ransack(params[:query])
    # @employees = @q.result(distinct: true)
    # @employees = @q.result.includes(:company)
    @pagy, @employees = pagy(@q.result.includes(:company), items: 15)
  end

  def show
    @employee = Employee.find(params[:id])
  end
end
