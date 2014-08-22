class TagsController < ApplicationController

  def index
    @tag = Tag.new
    @tags = Tag.all
    render('tags/index.html.erb')
  end

  def create
    @tag = Tag.new(params[:tags])
    if @tag.save
      redirect_to("/tags/")
    else
      render('tags/index.html.erb')
    end
  end

  def show
    @tag = Tag.find(params[:id])
    render('tags/show.html.erb')
  end

  def edit
    @tag = Tag.find(params[:id])
    render('tags/edit.html.erb')
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(params[:tags])
    redirect_to("/tags/")
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.delete
    redirect_to("/tags/")
  end
end
