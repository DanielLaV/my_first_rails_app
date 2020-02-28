require "application_system_test_case"

class FordsTest < ApplicationSystemTestCase
  setup do
    @ford = fords(:one)
  end

  test "visiting the index" do
    visit fords_url
    assert_selector "h1", text: "Fords"
  end

  test "creating a Ford" do
    visit fords_url
    click_on "New Ford"

    fill_in "Make", with: @ford.make
    fill_in "Model", with: @ford.model
    fill_in "Year", with: @ford.year
    click_on "Create Ford"

    assert_text "Ford was successfully created"
    click_on "Back"
  end

  test "updating a Ford" do
    visit fords_url
    click_on "Edit", match: :first

    fill_in "Make", with: @ford.make
    fill_in "Model", with: @ford.model
    fill_in "Year", with: @ford.year
    click_on "Update Ford"

    assert_text "Ford was successfully updated"
    click_on "Back"
  end

  test "destroying a Ford" do
    visit fords_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ford was successfully destroyed"
  end
end
