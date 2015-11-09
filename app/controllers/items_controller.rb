class ItemsController < ApplicationController
  def index
    @items = Item.for_list(params[:list_id])
