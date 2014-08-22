class CreateTagsRecipes < ActiveRecord::Migration
  def change
    create_table :tags_recipes do |t|
      t.belongs_to :tag
      t.belongs_to :recipe
    end
  end
end
