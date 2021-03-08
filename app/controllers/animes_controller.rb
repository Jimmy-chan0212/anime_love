class AnimesController < ApplicationController
  before_action :set_anime, only: [:edit, :show, :update, :destroy]

  def new
    @anime = Anime.new
    @holy_grounds = @anime.holy_grounds.build
  end

  def index
    @animes = Anime.all
  end

  def show
  end

  def create
    @anime = Anime.new(anime_params)
    if @anime.save
      redirect_to animes_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @anime.update(anime_params)
      redirect_to anime_path(@anime)
    else
      render 'edit'
    end
  end

  def destroy
    @anime.destroy
    redirect_to animes_path
  end




  private
  def set_anime
    @anime = Anime.find(params[:id])
  end

  def anime_params
    params[:anime].permit(
    :name,
    :release,
    :description,
    holy_grounds_attributes: [
      :id,
      :name
      ]
    )
  end
end
