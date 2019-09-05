require "application_system_test_case"

class PersonInfosTest < ApplicationSystemTestCase
  setup do
    @person_info = person_infos(:one)
  end

  test "visiting the index" do
    visit person_infos_url
    assert_selector "h1", text: "Person Infos"
  end

  test "creating a Person info" do
    visit person_infos_url
    click_on "New Person Info"

    fill_in "Address", with: @person_info.address
    fill_in "Age", with: @person_info.age
    fill_in "Apply for", with: @person_info.apply_for
    fill_in "Area", with: @person_info.area
    fill_in "Cnic", with: @person_info.cnic
    fill_in "Cv upload", with: @person_info.cv_upload
    fill_in "Detail area research", with: @person_info.detail_area_research
    fill_in "Gender", with: @person_info.gender
    fill_in "Mobile", with: @person_info.mobile
    fill_in "Name", with: @person_info.name
    click_on "Create Person info"

    assert_text "Person info was successfully created"
    click_on "Back"
  end

  test "updating a Person info" do
    visit person_infos_url
    click_on "Edit", match: :first

    fill_in "Address", with: @person_info.address
    fill_in "Age", with: @person_info.age
    fill_in "Apply for", with: @person_info.apply_for
    fill_in "Area", with: @person_info.area
    fill_in "Cnic", with: @person_info.cnic
    fill_in "Cv upload", with: @person_info.cv_upload
    fill_in "Detail area research", with: @person_info.detail_area_research
    fill_in "Gender", with: @person_info.gender
    fill_in "Mobile", with: @person_info.mobile
    fill_in "Name", with: @person_info.name
    click_on "Update Person info"

    assert_text "Person info was successfully updated"
    click_on "Back"
  end

  test "destroying a Person info" do
    visit person_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person info was successfully destroyed"
  end
end
