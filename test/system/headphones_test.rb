require "application_system_test_case"

class HeadphonesTest < ApplicationSystemTestCase
  setup do
    @headphone = headphones(:one)
  end

  test "visiting the index" do
    visit headphones_url
    assert_selector "h1", text: "Headphones"
  end

  test "creating a Headphone" do
    visit headphones_url
    click_on "New Headphone"

    fill_in "Condition", with: @headphone.Condition
    fill_in "Laptopname", with: @headphone.LaptopName
    fill_in "Location", with: @headphone.Location
    fill_in "Memory", with: @headphone.Memory
    fill_in "Price", with: @headphone.Price
    click_on "Create Headphone"

    assert_text "Headphone was successfully created"
    click_on "Back"
  end

  test "updating a Headphone" do
    visit headphones_url
    click_on "Edit", match: :first

    fill_in "Condition", with: @headphone.Condition
    fill_in "Laptopname", with: @headphone.LaptopName
    fill_in "Location", with: @headphone.Location
    fill_in "Memory", with: @headphone.Memory
    fill_in "Price", with: @headphone.Price
    click_on "Update Headphone"

    assert_text "Headphone was successfully updated"
    click_on "Back"
  end

  test "destroying a Headphone" do
    visit headphones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Headphone was successfully destroyed"
  end
end
