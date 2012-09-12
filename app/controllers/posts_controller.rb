class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /posts/1
  def show
    @post = Post[params[:id]]

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /posts/new
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post[params[:id]]
  end

  # POST /posts
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to action: "show", id: @post.to_param, notice: 'Post was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /posts/1
  def update
    @post = Post[params[:id]]

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to action: "edit", id: @post.to_param, notice: 'Post was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /posts/1
  def destroy
    @post = Post[params[:id]]
    @post.delete

    respond_to do |format|
      format.html { redirect_to "/posts" }
    end
  end
end
