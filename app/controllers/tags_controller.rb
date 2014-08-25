class TagsController < ApplicationController

  def index
    @tag = Tag.new
    @tags = Tag.all
  end

  def create
    @tags = Tag.all
    @tag = Tag.new(params[:tags])
    if @tag.save
      flash[:notice] = "Tag added!"
      redirect_to tags_path
    else
      render 'index'
    end
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(params[:tags])
    redirect_to tags_path
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.delete
    redirect_to tags_path
  end
end
