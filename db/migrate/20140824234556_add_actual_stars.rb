class AddActualStars < ActiveRecord::Migration
  def change
    remove_column :recipes, :stars, :integer
    add_column :recipes, :stars, :string
  end
end
