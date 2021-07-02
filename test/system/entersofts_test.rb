require "application_system_test_case"

class EntersoftsTest < ApplicationSystemTestCase
  setup do
    @entersoft = entersofts(:one)
  end

  test "visiting the index" do
    visit entersofts_url
    assert_selector "h1", text: "Entersofts"
  end

  test "creating a Entersoft" do
    visit entersofts_url
    click_on "New Entersoft"

    check "Areureadytorelocate" if @entersoft.areureadytorelocate
    fill_in "Btechpercentage", with: @entersoft.btechpercentage
    fill_in "Email", with: @entersoft.email
    fill_in "Fathername", with: @entersoft.fathername
    fill_in "Fullname", with: @entersoft.fullname
    fill_in "Location", with: @entersoft.location
    fill_in "Mobilenumber", with: @entersoft.mobilenumber
    click_on "Create Entersoft"

    assert_text "Entersoft was successfully created"
    click_on "Back"
  end

  test "updating a Entersoft" do
    visit entersofts_url
    click_on "Edit", match: :first

    check "Areureadytorelocate" if @entersoft.areureadytorelocate
    fill_in "Btechpercentage", with: @entersoft.btechpercentage
    fill_in "Email", with: @entersoft.email
    fill_in "Fathername", with: @entersoft.fathername
    fill_in "Fullname", with: @entersoft.fullname
    fill_in "Location", with: @entersoft.location
    fill_in "Mobilenumber", with: @entersoft.mobilenumber
    click_on "Update Entersoft"

    assert_text "Entersoft was successfully updated"
    click_on "Back"
  end

  test "destroying a Entersoft" do
    visit entersofts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entersoft was successfully destroyed"
  end
end
