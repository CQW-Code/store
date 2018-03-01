class ShopsController < ApplicationController
  
  before_action :set_shop, only: [:show, :update, :edit, :destroy]
  
  def index
    @shops = Shop.all
  end

  def show

  end

  def new
    @shop = Shop.new
    render partial: 'form'
  end

  def edit
    render partial: 'form'
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shops_path
    else
      render :new
    end
  end

    def update
     
      if  @shop.update(shop_params)
        redirect_to :shops
      else 
        render :edit
    end
  end 

    def destroy
     @shop.destroy
     redirect_to shops_path

    end

    private

    def set_shop 
    @shop = Shop.find(params[:id])
    
    end

    def shop_params
    params.require(:shop).permit(:name)
    end
end
