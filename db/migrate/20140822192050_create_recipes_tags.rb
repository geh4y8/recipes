class CreateRecipesTags < ActiveRecord::Migration
  def change
    create_table :recipes_tags do |t|
      t.belongs_to :tags
      t.belongs_to :recipes
    end
    drop_table :tags_recipes
  end
end
