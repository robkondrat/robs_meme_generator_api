class Api::MemesController < ApplicationController
  def index
    @memes = Meme.all
    render "index.json.jb"
  end

  def create
    @meme - Meme.new(
      top_text: params[:top_text],
      bottom_text: params[:bottom_text],
      img: params[:img]
    )
  end

  def show
    @meme = Meme.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @meme = Meme.find_by(id: params[:id])
    @meme.top_text = params[:top_text] || @meme.top_text
    @meme.bottom_text = params[:bottom_text] || @meme.bottom_text
    @meme.img = params[:img] || @meme.img
    @meme.save
    render "show.json.jb"
  end

  def destroy
    meme = Meme.find_by(id: params[:id])
    meme.destroy
    render json: {message: "Meme successfully destroyed"}
  end
end
