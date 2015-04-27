class WdipostsController < ApplicationController
  def index
    @wdiposts = Wdipost.all
  end

  def new
    @wdipost = Wdipost.new
  end

  def create
    @wdipost = Wdipost.new(wdipost_params)
      if @wdipost.save
        redirect_to wdiposts_path
      else
        render 'new'
      end
  end

  def edit
    @wdipost = Wdipost.find(params[:id])
  end

  def update
    @wdipost = Wdipost.find(params[:id])

    if @wdipost.update_attributes(wdipost_params)
      redirect_to wdiposts_path
    else
      render "edit"
    end
  end

  def destroy
    @wdipost = Wdipost.find(params[:id])
    @wdipost.destroy
    redirect_to wdiposts_path
  end


      private

      def wdipost_params
        params.require(:wdipost).permit(:title, :body)
      end

end