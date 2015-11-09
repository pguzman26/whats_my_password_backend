#
class ItemsController < ApplicationController
  def index
    @items = Item.for_list(params[:list_id])

    respond_to do |format|
      format.json { render json: @items }
    end
  end

  def create
    @item = Item.create(params[:item])
    redirect_to list_items_url
  end

  def destroy
    Item.find_by_list_id_and_id(params[:list_id], params[:id]).destroy
    redirect_to list_items_url
  end
end
