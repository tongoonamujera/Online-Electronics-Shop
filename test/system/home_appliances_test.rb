require "application_system_test_case"

class HomeAppliancesTest < ApplicationSystemTestCase
  setup do
    @home_appliance = home_appliances(:one)
  end

  test "visiting the index" do
    visit home_appliances_url
    assert_selector "h1", text: "Home Appliances"
  end

  test "creating a Home appliance" do
    visit home_appliances_url
    click_on "New Home Appliance"

    fill_in "Condition", with: @home_appliance.Condition
    fill_in "Laptopname", with: @home_appliance.LaptopName
    fill_in "Location", with: @home_appliance.Location
    fill_in "Memory", with: @home_appliance.Memory
    fill_in "Price", with: @home_appliance.Price
    click_on "Create Home appliance"

    assert_text "Home appliance was successfully created"
    click_on "Back"
  end

  test "updating a Home appliance" do
    visit home_appliances_url
    click_on "Edit", match: :first

    fill_in "Condition", with: @home_appliance.Condition
    fill_in "Laptopname", with: @home_appliance.LaptopName
    fill_in "Location", with: @home_appliance.Location
    fill_in "Memory", with: @home_appliance.Memory
    fill_in "Price", with: @home_appliance.Price
    click_on "Update Home appliance"

    assert_text "Home appliance was successfully updated"
    click_on "Back"
  end

  test "destroying a Home appliance" do
    visit home_appliances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home appliance was successfully destroyed"
  end
end
