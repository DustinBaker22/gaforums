class FewdpostsController < ApplicationController
  def index
    @fewdposts = Fewdpost.all
  end

  def new
    @fewdpost = Fewdpost.new
  end

  def create
    @fewdpost = Fewdpost.new(fewdpost_params)
      if @fewdpost.save
        redirect_to fewdposts_path
      else
        render 'new'
      end
  end

  def edit
    @fewdpost = Fewdpost.find(params[:id])
  end

  def update
    @fewdpost = Fewdpost.find(params[:id])

    if @fewdpost.update_attributes(fewdpost_params)
      redirect_to fewdposts_path
    else
      render "edit"
    end
  end

  def destroy
    @fewdpost = Fewdpost.find(params[:id])
    @fewdpost.destroy
    redirect_to fewdposts_path
  end


      private

      def fewdpost_params
        params.require(:fewdpost).permit(:title, :body)
      end

end