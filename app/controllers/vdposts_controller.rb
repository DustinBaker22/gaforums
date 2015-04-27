class VdpostsController < ApplicationController
  def index
    @vdposts = Vdpost.all
  end

  def new
    @vdpost = Vdpost.new
  end

  def create
    @vdpost = Vdpost.new(vdpost_params)
      if @vdpost.save
        redirect_to vdposts_path
      else
        render 'new'
      end
  end

  def edit
    @vdpost = Vdpost.find(params[:id])
  end

  def update
    @vdpost = Vdpost.find(params[:id])

    if @vdpost.update_attributes(vdpost_params)
      redirect_to vdposts_path
    else
      render "edit"
    end
  end

  def destroy
    @vdpost = Vdpost.find(params[:id])
    @vdpost.destroy
    redirect_to vdposts_path
  end


      private

      def vdpost_params
        params.require(:vdpost).permit(:title, :body)
      end

end