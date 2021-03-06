module Blog
  class PostsController < ApplicationController
    respond_to :html

    def new
      @post = Post.new
    end

    def index
      @posts = Post.all
    end

    def show
      @post = Post.find(params[:id])
    end

    def create
      @post = Post.create(params[:post])

      respond_with(@post)
    end
  end
end
