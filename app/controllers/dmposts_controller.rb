class DmpostsController < ApplicationController
  def index
    @dmposts = Dmpost.all
  end

  def new
    @dmpost = Dmpost.new
  end

  def create
    @dmpost = Dmpost.new(dmpost_params)
      if @dmpost.save
        redirect_to dmposts_path
      else
        render 'new'
      end
  end

  def edit
    @dmpost = Dmpost.find(params[:id])
  end

  def update
    @dmpost = Dmpost.find(params[:id])

    if @dmpost.update_attributes(dmpost_params)
      redirect_to dmposts_path
    else
      render "edit"
    end
  end

  def destroy
    @dmpost = Dmpost.find(params[:id])
    @dmpost.destroy
    redirect_to dmposts_path
  end


      private

      def dmpost_params
        params.require(:dmpost).permit(:title, :body)
      end

end