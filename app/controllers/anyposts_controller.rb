class AnypostsController < ApplicationController
  def index
    @anyposts = Anypost.all
  end

  def new
    @anypost = Anypost.new
  end

  def create
    @anypost = Anypost.new(anypost_params)
      if @anypost.save
        redirect_to anyposts_path
      else
        render 'new'
      end
  end

  def edit
    @anypost = Anypost.find(params[:id])
  end

  def update
    @anypost = Anypost.find(params[:id])

    if @anypost.update_attributes(anypost_params)
      redirect_to anyposts_path
    else
      render "edit"
    end
  end

  def destroy
    @anypost = Anypost.find(params[:id])
    @anypost.destroy
    redirect_to anyposts_path
  end

      private

      def anypost_params
        params.require(:anypost).permit(:title, :body)
      end

end