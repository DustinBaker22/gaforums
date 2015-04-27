class PmpostsController < ApplicationController
  def index
    @pmposts = Pmpost.all
  end

  def new
    @pmpost = Pmpost.new
  end

  def create
    @pmpost = Pmpost.new(pmpost_params)
      if @pmpost.save
        redirect_to pmposts_path
      else
        render 'new'
      end
  end

  def edit
    @pmpost = Pmpost.find(params[:id])
  end

  def update
    @pmpost = Pmpost.find(params[:id])

    if @pmpost.update_attributes(pmpost_params)
      redirect_to pmposts_path
    else
      render "edit"
    end
  end

  def destroy
    @pmpost = Pmpost.find(params[:id])
    @pmpost.destroy
    redirect_to pmposts_path
  end


      private

      def pmpost_params
        params.require(:pmpost).permit(:title, :body)
      end

end