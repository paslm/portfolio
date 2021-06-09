class PostsController < ApplicationController
    def index
     @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
    end
    
    def create
        @post = Post.create(post_params)
        @post.user_id = current_user.id
        @post.save
    end 

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
        end
    end


    def destroy
        @post = Post.find_by(params[:id])
        if @post.destroy
        end
    end
  

    private 

    def post_params
        params.require(:post).permit(:name, :description, :user_id)
    end

end
