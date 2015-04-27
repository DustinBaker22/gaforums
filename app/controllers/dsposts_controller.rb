class DspostsController < ApplicationController
  def index
    @dsposts = Dspost.all
  end

  def new
    @dspost = Dspost.new
  end

  def create
    @dspost = Dspost.new(dspost_params)
      if @dspost.save
        redirect_to dsposts_path
      else
        render 'new'
      end
  end

  def edit
    @dspost = Dspost.find(params[:id])
  end

  def update
    @dspost = Dspost.find(params[:id])

    if @dspost.update_attributes(dspost_params)
      redirect_to dsposts_path
    else
      render "edit"
    end
  end

  def destroy
    @dspost = Dspost.find(params[:id])
    @dspost.destroy
    redirect_to dsposts_path
  end


      private

      def dspost_params
        params.require(:dspost).permit(:title, :body)
      end

end