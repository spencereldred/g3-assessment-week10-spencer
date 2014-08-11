class GifsController < ApplicationController
  def new
    @gif = Gif.new
  end

  def create
    gif = params[:gif]
    @gif = Gif.create(url: gif[:url], title: gif[:title])

    if @gif.save
      flash[:notice] = "gif created successfully"
      redirect_to root_path
    else
      # binding.pry
      render :new
    end

  end
end