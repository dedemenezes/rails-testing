require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visting products index" do
    visit root_url

    assert_selector "h1", text: 'Awesome Products'
    assert_selector ".card-product", count: Product.count
  end

  test "lets a signed in user create a new product" do
    login_as users(:seb)
    visit "/products/new"

    fill_in 'product_name', with: "Le Wagon"
    fill_in 'product_tagline', with: "Change your life: learn to code!"

    click_on "Create Product"

    assert_text "Change your life: learn to code!"
  end
end
