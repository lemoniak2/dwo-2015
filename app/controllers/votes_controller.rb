class VotesController < ApplicationController
  before_action :set_item, only: [:create, :destroy]

  def create
    if @item.vote_up!
      redirect_to items_path, notice: 'You\'ve voted up'
    else
      redirect_to items_path, alert: 'An error has occured'
    end
  end

  def destroy
    if @item.vote_down!
      redirect_to items_path, notice: 'You\'ve voted up'
    else
      redirect_to items_path, alert: 'An error has occured'
    end
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end
end
