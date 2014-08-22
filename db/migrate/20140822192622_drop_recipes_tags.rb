class DropRecipesTags < ActiveRecord::Migration
  def change
    drop_table :recipes_tags2s
  end
    create_table :recipes_tags do |t|
      t.belongs_to :tag
      t.belongs_to :recipe
    end
end
