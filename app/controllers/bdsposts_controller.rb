class BdspostsController < ApplicationController
  def index
    @bdsposts = Bdspost.all
  end

  def new
    @bdspost = Bdspost.new
  end

  def create
    @bdspost = Bdspost.new(bdspost_params)
      if @bdspost.save
        redirect_to bdsposts_path
      else
        render 'new'
      end
  end

  def edit
    @bdspost = Bdspost.find(params[:id])
  end

  def update
    @bdspost = Bdspost.find(params[:id])

    if @bdspost.update_attributes(bdspost_params)
      redirect_to bdsposts_path
    else
      render "edit"
    end
  end

  def destroy
    @bdspost = Bdspost.find(params[:id])
    @bdspost.destroy
    redirect_to bdsposts_path
  end

      private

      def bdspost_params
        params.require(:bdspost).permit(:title, :body)
      end

end