require "application_system_test_case"

class TelevisionsTest < ApplicationSystemTestCase
  setup do
    @television = televisions(:one)
  end

  test "visiting the index" do
    visit televisions_url
    assert_selector "h1", text: "Televisions"
  end

  test "creating a Television" do
    visit televisions_url
    click_on "New Television"

    fill_in "Condition", with: @television.Condition
    fill_in "Laptopname", with: @television.LaptopName
    fill_in "Location", with: @television.Location
    fill_in "Memory", with: @television.Memory
    fill_in "Price", with: @television.Price
    click_on "Create Television"

    assert_text "Television was successfully created"
    click_on "Back"
  end

  test "updating a Television" do
    visit televisions_url
    click_on "Edit", match: :first

    fill_in "Condition", with: @television.Condition
    fill_in "Laptopname", with: @television.LaptopName
    fill_in "Location", with: @television.Location
    fill_in "Memory", with: @television.Memory
    fill_in "Price", with: @television.Price
    click_on "Update Television"

    assert_text "Television was successfully updated"
    click_on "Back"
  end

  test "destroying a Television" do
    visit televisions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Television was successfully destroyed"
  end
end
