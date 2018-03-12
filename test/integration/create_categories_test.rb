require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

test "get new category form and create category" do
get new_category_path
assert_template 'categories/new'
assert_difference 'Category.count', 1 do
#post_via_redirect categories_path, category: {name: "sports"}
# if using Rails 5 use below 2 lines instead of line above (without the comment tag of course):
 post categories_path, params: { category: { name: "sports" } }
 follow_redirect!
end
assert_template 'categories/index'
assert_match "sports", response.body
end

end