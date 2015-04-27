class WelcomepostsController < ApplicationController
  def index
    @welcomeposts = Welcomepost.all
  end

  def new
    @welcomepost = Welcomepost.new
  end

  def create
    @welcomepost = Welcomepost.new(welcomepost_params)
      if @welcomepost.save
        redirect_to welcomeposts_path
      else
        render 'new'
      end
  end

  def edit
    @welcomepost = Welcomepost.find(params[:id])
  end

  def update
    @welcomepost = Welcomepost.find(params[:id])

    if @welcomepost.update_attributes(welcomepost_params)
      redirect_to welcomeposts_path
    else
      render "edit"
    end
  end

  def destroy
    @welcomepost = welcomepost.find(params[:id])
    @welcomepost.destroy
    redirect_to welcomeposts_path
  end


      private

      def welcomepost_params
        params.require(:welcomepost).permit(:title, :body)
      end

end