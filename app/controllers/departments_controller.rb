class DepartmentsController < ApplicationController
  before_action :set_shop
  before_action :set_dept, only: [:show, :edit, :update, :destroy]
  
  def index
    @departments = @shop.departments
  end

  def show
  end

  def new
    @department = @shop.departments.new
    render partial: 'form'
  end

  def edit
    render partial: 'form'
  end

  def create
    @department = @shop.departments.new(dept_params)
      if @department.save
        redirect_to [@shop, @department]
      else
        render :new
      end 
    end 

  def update 
    if @department.update(dept_params)
      redirect_to [@shop, @department]
    else 
      render :edit
    end
  end 

  def destroy
    @department.destroy
    redirect_to shop_departments_path 
  end 

  private

  def set_shop 
    @shop = Shop.find(params[:shop_id])
    end

    def set_dept 
    @department = Department.find(params[:id])
    end 

    def dept_params
    params.require(:department).permit(:name, :body)
    end
end
