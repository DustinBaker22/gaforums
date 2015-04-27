class UxdipostsController < ApplicationController
  def index
    @uxdiposts = Uxdipost.all
  end

  def new
    @uxdipost = Uxdipost.new
  end

  def create
    @uxdipost = Uxdipost.new(uxdipost_params)
      if @uxdipost.save
        redirect_to uxdiposts_path
      else
        render 'new'
      end
  end

  def edit
    @uxdipost = Uxdipost.find(params[:id])
  end

  def update
    @uxdipost = Uxdipost.find(params[:id])

    if @uxdipost.update_attributes(uxdipost_params)
      redirect_to uxdiposts_path
    else
      render "edit"
    end
  end

  def destroy
    @uxdipost = Uxdipost.find(params[:id])
    @uxdipost.destroy
    redirect_to uxdiposts_path
  end


      private

      def uxdipost_params
        params.require(:uxdipost).permit(:title, :body)
      end

end