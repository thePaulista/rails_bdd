class ReadersController < ApplicationController
  def new
    @reader = Reader.new
  end

  def create
    @reader =  Reader.new(params[:reader])
    if @reader.save
      redirect_to root_url, notice: "You registered"
    else
      flash.now[:error] = "Something went wrong"
      render :new
    end
  end
end
