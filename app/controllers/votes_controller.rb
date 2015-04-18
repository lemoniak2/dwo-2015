class VotesController < ApplicationController
  expose(:item)

  def create
    if item.vote_up!
      render json: item.to_json, status: 200
    else
      render json: item.to_json, status: 401
    end
  end

  def destroy
    if item.vote_down!
      render json: item.to_json, status: 200
    else
      render json: item.to_json, status: 401
    end
  end
end