class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :recipe_id
    end
    add_column :recipes, :tag_id, :integer
  end
end
