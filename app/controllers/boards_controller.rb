class BoardsController < ApplicationController

	def index
		@boards = Board.all
	end


	def new
		@board = Board.new
	end

	def create
		@board = Board.new(board_params)
			if @board.save
				redirect_to forums_path
			else
				render "new"
			end
	end

	def show
		@board = board.find(params[:id])
		# @thread = Thread.new
		# @threads = @board.threads
	end

	def wdi

	end

private

	def board_params
		params.require(:board).permit(:title, :description)
	end

end
