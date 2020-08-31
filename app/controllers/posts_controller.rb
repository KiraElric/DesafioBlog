class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard

  def index
    if params[:title].present?
      @posts = Post.where("title = ?", params[:title])
    else
      @posts = Post.all
    end
  end

  def create
    @post = Post.create(title: params[:title], image_url: params[:image_url], content: params[:content])
  end

  def dashboard
    
  end
end
