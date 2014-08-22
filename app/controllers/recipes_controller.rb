class RecipesController < ApplicationController

  def index
    @tags = Tag.all
    @recipe = Recipe.new
    @recipes = Recipe.order(stars: :desc)
    render('recipes/index.html.erb')
  end

  def create
    @recipes = Recipe.all
    @tags = Tag.all
    tag = Tag.find(params[:tag_id])
    @recipe = tag.recipes.create(params[:recipes])
    if @recipe.valid?
      flash[:notice] = "Your recipe was added to the database!"
      redirect_to("/recipes")
    else
      render('recipes/index.html.erb')
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

  def edit
    @tags = Tag.all
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(params[:recipes])
    flash[:notice] = "#{@recipe.title} updated"
    redirect_to("/recipes/#{@recipe.id}")
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    flash[:notice] = "#{@recipe.title} deleted."
    @recipe.delete
    redirect_to("/recipes/")
  end
end
