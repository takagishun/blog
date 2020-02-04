module PostsHelper
	def set_post
		@post = Post.find_by(url: params[:url])
	end
end
