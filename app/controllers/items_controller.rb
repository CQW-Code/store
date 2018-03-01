class ItemsController < ApplicationController
  
  before_action :set_dept

  def new
    @item = Item.new
  end

  def create
  @item = @department.items.new(item_params)
    if @item.save
    redirect_to shop_department_path(@department.shop_id, @department)
    else
    render :new
    end
  end

  private

  def set_dept
    @department = Department.find(params[:department_id])
  end 

  def item_params
    params.require(:item).permit(:name, :description)
  end
end
