require 'test_helper'

class DistributorsControllerTest < ActionController::TestCase
  setup do
    @distributor = distributors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distributors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distributor" do
    assert_difference('Distributor.count') do
      post :create, distributor: { contact_email: @distributor.contact_email, contact_name: @distributor.contact_name, email: @distributor.email, image_url: @distributor.image_url, name: @distributor.name, notes: @distributor.notes, phone_number: @distributor.phone_number, url: @distributor.url }
    end

    assert_redirected_to distributor_path(assigns(:distributor))
  end

  test "should show distributor" do
    get :show, id: @distributor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distributor
    assert_response :success
  end

  test "should update distributor" do
    patch :update, id: @distributor, distributor: { contact_email: @distributor.contact_email, contact_name: @distributor.contact_name, email: @distributor.email, image_url: @distributor.image_url, name: @distributor.name, notes: @distributor.notes, phone_number: @distributor.phone_number, url: @distributor.url }
    assert_redirected_to distributor_path(assigns(:distributor))
  end

  test "should destroy distributor" do
    assert_difference('Distributor.count', -1) do
      delete :destroy, id: @distributor
    end

    assert_redirected_to distributors_path
  end
end
