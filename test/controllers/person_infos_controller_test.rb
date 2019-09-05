require 'test_helper'

class PersonInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_info = person_infos(:one)
  end

  test "should get index" do
    get person_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_person_info_url
    assert_response :success
  end

  test "should create person_info" do
    assert_difference('PersonInfo.count') do
      post person_infos_url, params: { person_info: { address: @person_info.address, age: @person_info.age, apply_for: @person_info.apply_for, area: @person_info.area, cnic: @person_info.cnic, cv_upload: @person_info.cv_upload, detail_area_research: @person_info.detail_area_research, gender: @person_info.gender, mobile: @person_info.mobile, name: @person_info.name } }
    end

    assert_redirected_to person_info_url(PersonInfo.last)
  end

  test "should show person_info" do
    get person_info_url(@person_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_info_url(@person_info)
    assert_response :success
  end

  test "should update person_info" do
    patch person_info_url(@person_info), params: { person_info: { address: @person_info.address, age: @person_info.age, apply_for: @person_info.apply_for, area: @person_info.area, cnic: @person_info.cnic, cv_upload: @person_info.cv_upload, detail_area_research: @person_info.detail_area_research, gender: @person_info.gender, mobile: @person_info.mobile, name: @person_info.name } }
    assert_redirected_to person_info_url(@person_info)
  end

  test "should destroy person_info" do
    assert_difference('PersonInfo.count', -1) do
      delete person_info_url(@person_info)
    end

    assert_redirected_to person_infos_url
  end
end
