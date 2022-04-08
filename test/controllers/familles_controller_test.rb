require 'test_helper'

class FamillesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @famille = familles(:one)
  end

  test "should get index" do
    get familles_url, as: :json
    assert_response :success
  end

  test "should create famille" do
    assert_difference('Famille.count') do
      post familles_url, params: { famille: { nom: @famille.nom } }, as: :json
    end

    assert_response 201
  end

  test "should show famille" do
    get famille_url(@famille), as: :json
    assert_response :success
  end

  test "should update famille" do
    patch famille_url(@famille), params: { famille: { nom: @famille.nom } }, as: :json
    assert_response 200
  end

  test "should destroy famille" do
    assert_difference('Famille.count', -1) do
      delete famille_url(@famille), as: :json
    end

    assert_response 204
  end
end
