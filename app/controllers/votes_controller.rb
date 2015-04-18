class VotesController < ApplicationController
  expose(:item)

  def create
    if item.vote_up!
      redirect_to items_path, notice: 'You\'ve voted up'
    else
      redirect_to items_path, alert: 'An error has occured'
    end
  end

  def destroy
    if item.vote_down!
      redirect_to items_path, notice: 'You\'ve voted up'
    else
      redirect_to items_path, alert: 'An error has occured'
    end
  end
end