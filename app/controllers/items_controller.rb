class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_item, only: [:show, :edit, :update, :description]
  before_action :move_to_index, only: [:edit, :update]

  def index
    @items = Item.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def show
  end

  def edit
  end

def destroy
@item.destroy
redirect_to root_path
end
  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :description, :price, :item_condition_id, :delivery_charge_id, :delivery_day_id,
                                 :prefecture_id, :category_id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_index
    return if current_user.id == @item.user_id

    redirect_to root_path
  end
end
