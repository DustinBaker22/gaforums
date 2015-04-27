class MdpostsController < ApplicationController
  def index
    @mdposts = Mdpost.all
  end

  def new
    @mdpost = Mdpost.new
  end

  def create
    @mdpost = Mdpost.new(post_params)
      if @mdpost.save
        redirect_to mdposts_path
      else
        render 'new'
      end
  end

  def edit
    @mdpost = Mdpost.find(params[:id])
  end

  def update
    @mdpost = Mdpost.find(params[:id])

    if @mdpost.update_attributes(mdpost_params)
      redirect_to mdposts_path
    else
      render "edit"
    end
  end

  def destroy
    @mdpost = Mdpost.find(params[:id])
    @mdpost.destroy
    redirect_to mdposts_path
  end


      private

      def mdpost_params
        params.require(:mdpost).permit(:title, :body)
      end

end