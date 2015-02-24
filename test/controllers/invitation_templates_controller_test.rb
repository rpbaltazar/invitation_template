require 'test_helper'

class InvitationTemplatesControllerTest < ActionController::TestCase
  setup do
    @invitation_template = invitation_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invitation_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invitation_template" do
    assert_difference('InvitationTemplate.count') do
      post :create, invitation_template: { body: @invitation_template.body, subject: @invitation_template.subject }
    end

    assert_redirected_to invitation_template_path(assigns(:invitation_template))
  end

  test "should show invitation_template" do
    get :show, id: @invitation_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invitation_template
    assert_response :success
  end

  test "should update invitation_template" do
    patch :update, id: @invitation_template, invitation_template: { body: @invitation_template.body, subject: @invitation_template.subject }
    assert_redirected_to invitation_template_path(assigns(:invitation_template))
  end

  test "should destroy invitation_template" do
    assert_difference('InvitationTemplate.count', -1) do
      delete :destroy, id: @invitation_template
    end

    assert_redirected_to invitation_templates_path
  end
end
