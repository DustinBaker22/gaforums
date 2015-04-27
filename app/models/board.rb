class Board < ActiveRecord::Base
	has_many :threads
  belongs_to :user

	def thread_count
	end

	def post_count
		# board.post.count
	end

	def last_post
	end


end
