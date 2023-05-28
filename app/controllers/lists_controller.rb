class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save!
    redirect_to list_path(@list)
  end

  def show
    @list = List.find(params[:id])
  end

  def destroy
    @list = List.find(params[:id])
    @list.delete
    redirect_to list_path(@list), status: :see_other
  end

  private

  def list_params
    params.require(:list).permit(:name, :movie_ids)
  end

  def movie_params
    params.require(:movie).permit(:title, :poster_url, :overview)
  end
end
