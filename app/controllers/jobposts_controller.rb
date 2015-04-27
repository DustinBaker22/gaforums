class JobpostsController < ApplicationController
  def index
    @jobposts = Jobpost.all
  end

  def new
    @jobpost = Jobpost.new
  end

  def create
    @jobpost = Jobpost.new(jobpost_params)
      if @jobpost.save
        redirect_to jobposts_path
      else
        render 'new'
      end
  end

  def edit
    @jobpost = Jobpost.find(params[:id])
  end

  def update
    @jobpost = Jobpost.find(params[:id])

    if @jobpost.update_attributes(jobpost_params)
      redirect_to jobposts_path
    else
      render "edit"
    end
  end

  def destroy
    @jobpost = Jobpost.find(params[:id])
    @jobpost.destroy
    redirect_to jobposts_path
  end


      private

      def jobpost_params
        params.require(:jobpost).permit(:title, :body)
      end

end