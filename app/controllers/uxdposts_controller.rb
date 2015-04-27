class UxdpostsController < ApplicationController
  def index
    @uxdposts = Uxdpost.all
  end

  def new
    @uxdpost = Uxdost.new
  end

  def create
    @uxdpost = Uxdpost.new(uxdpost_params)
      if @uxdpost.save
        redirect_to uxdposts_path
      else
        render 'new'
      end
  end

  def edit
    @uxdpost = Uxdpost.find(params[:id])
  end

  def update
    @uxdpost = Uxdpost.find(params[:id])

    if @uxdpost.update_attributes(uxdpost_params)
      redirect_to uxdposts_path
    else
      render "edit"
    end
  end

  def destroy
    @uxdpost = Uxdpost.find(params[:id])
    @uxdpost.destroy
    redirect_to uxdposts_path
  end


      private

      def uxdpost_params
        params.require(:uxdpost).permit(:title, :body)
      end

end