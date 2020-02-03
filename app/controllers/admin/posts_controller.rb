module Admin
	class PostsController < BaseController
		before_action :logged_in_user
		before_action :set_post, only: [:show, :edit, :update, :destroy]

		def index
			@posts = Post.all
		end

		def new
			@post = Post.new
		end

		def create
			@post = Post.new(post_params)
			if @post.save
				redirect_to admin_post_path(@post), notice: '記事作成成功'
			else
				render 'admin/posts/new', notice: '記事作成失敗'
			end
		end

		def show
		end

		def edit
		end

		def update
			if @post.update(post_params)
				redirect_to admin_post_path(@post), notice: '記事更新成功'
			else
				render 'admin/posts/edit', notice: '記事更新失敗'
			end
		end

		def destroy
			@post.destroy
			redirect_to admin_posts_path, notice: '記事削除成功'
		end

		def post_params
			params.require(:post).permit(:title, :url, :image, :excerpt, :body)
		end

		def set_post
			@post = Post.find(params[:id])
		end
	end
end
