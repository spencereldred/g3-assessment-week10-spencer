class GifsController < ApplicationController
  def new
    @gif = Gif.new
  end

  def create
    gif = params[:gif]
    @gif = Gif.create(url: gif[:url], title: gif[:title])

    if @gif.save
      flash[:success] = "gif created successfully"
      redirect_to root_path
    else
      render :new
    end

  end
end