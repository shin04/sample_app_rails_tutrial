require "application_system_test_case"

class AbcdsTest < ApplicationSystemTestCase
  setup do
    @abcd = abcds(:one)
  end

  test "visiting the index" do
    visit abcds_url
    assert_selector "h1", text: "Abcds"
  end

  test "creating a Abcd" do
    visit abcds_url
    click_on "New Abcd"

    fill_in "Efg", with: @abcd.efg
    click_on "Create Abcd"

    assert_text "Abcd was successfully created"
    click_on "Back"
  end

  test "updating a Abcd" do
    visit abcds_url
    click_on "Edit", match: :first

    fill_in "Efg", with: @abcd.efg
    click_on "Update Abcd"

    assert_text "Abcd was successfully updated"
    click_on "Back"
  end

  test "destroying a Abcd" do
    visit abcds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Abcd was successfully destroyed"
  end
end
