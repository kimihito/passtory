class PostsController < ApplicationController
  protect_from_forgery except: :create
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  def create
    #render nothing:true and return unless params[:token] == params[:token]
    Post.create(params[:post])
    #Pusher.foobar
  end

  def update
    @post = Post.find(params[:id])
    @post.score += 1
    @post.save
    render json: @post
  end

  def today
    @posts = Post.ranking 1
  end
  def ranking
    @posts = Post.ranking
  end
end
