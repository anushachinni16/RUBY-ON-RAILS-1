require "test_helper"

class EntersoftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entersoft = entersofts(:one)
  end

  test "should get index" do
    get entersofts_url
    assert_response :success
  end

  test "should get new" do
    get new_entersoft_url
    assert_response :success
  end

  test "should create entersoft" do
    assert_difference('Entersoft.count') do
      post entersofts_url, params: { entersoft: { areureadytorelocate: @entersoft.areureadytorelocate, btechpercentage: @entersoft.btechpercentage, email: @entersoft.email, fathername: @entersoft.fathername, fullname: @entersoft.fullname, location: @entersoft.location, mobilenumber: @entersoft.mobilenumber } }
    end

    assert_redirected_to entersoft_url(Entersoft.last)
  end

  test "should show entersoft" do
    get entersoft_url(@entersoft)
    assert_response :success
  end

  test "should get edit" do
    get edit_entersoft_url(@entersoft)
    assert_response :success
  end

  test "should update entersoft" do
    patch entersoft_url(@entersoft), params: { entersoft: { areureadytorelocate: @entersoft.areureadytorelocate, btechpercentage: @entersoft.btechpercentage, email: @entersoft.email, fathername: @entersoft.fathername, fullname: @entersoft.fullname, location: @entersoft.location, mobilenumber: @entersoft.mobilenumber } }
    assert_redirected_to entersoft_url(@entersoft)
  end

  test "should destroy entersoft" do
    assert_difference('Entersoft.count', -1) do
      delete entersoft_url(@entersoft)
    end

    assert_redirected_to entersofts_url
  end
end
