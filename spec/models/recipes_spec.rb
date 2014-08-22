require 'rails_helper'

describe Recipe do
  it {should validate_presence_of :title }
  it {should validate_presence_of :recipe_description }
end
