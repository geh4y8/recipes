class CreateRecipesTags2 < ActiveRecord::Migration
  def change
    create_table :recipes_tags2s do |t|
      t.belongs_to :tag
      t.belongs_to :recipe
    end
    drop_table :recipes_tags
  end
end
