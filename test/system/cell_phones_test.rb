require "application_system_test_case"

class CellPhonesTest < ApplicationSystemTestCase
  setup do
    @cell_phone = cell_phones(:one)
  end

  test "visiting the index" do
    visit cell_phones_url
    assert_selector "h1", text: "Cell Phones"
  end

  test "creating a Cell phone" do
    visit cell_phones_url
    click_on "New Cell Phone"

    fill_in "Cellphonename", with: @cell_phone.CellPhoneName
    fill_in "Condition", with: @cell_phone.Condition
    fill_in "Location", with: @cell_phone.Location
    fill_in "Memory", with: @cell_phone.Memory
    fill_in "Price", with: @cell_phone.Price
    fill_in "Type", with: @cell_phone.Type
    click_on "Create Cell phone"

    assert_text "Cell phone was successfully created"
    click_on "Back"
  end

  test "updating a Cell phone" do
    visit cell_phones_url
    click_on "Edit", match: :first

    fill_in "Cellphonename", with: @cell_phone.CellPhoneName
    fill_in "Condition", with: @cell_phone.Condition
    fill_in "Location", with: @cell_phone.Location
    fill_in "Memory", with: @cell_phone.Memory
    fill_in "Price", with: @cell_phone.Price
    fill_in "Type", with: @cell_phone.Type
    click_on "Update Cell phone"

    assert_text "Cell phone was successfully updated"
    click_on "Back"
  end

  test "destroying a Cell phone" do
    visit cell_phones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cell phone was successfully destroyed"
  end
end
