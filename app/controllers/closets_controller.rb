class ClosetsController < ApplicationController
  def index
    @closets = Closet.order(created_at: :desc)
  end

  def new
    @closet = Closet.new
  end

  def create
    @closet = Closet.new(closet_params)
    if @closet.save
      redirect_to closets_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def closet_params 
    params.require(:closet).permit(:category_id, :size_id, :color_id, :season_id, :brand, :memo, :image).merge(user_id: current_user.id)
  end

end
