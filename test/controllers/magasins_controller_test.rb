require 'test_helper'

class MagasinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @magasin = magasins(:one)
  end

  test "should get index" do
    get magasins_url, as: :json
    assert_response :success
  end

  test "should create magasin" do
    assert_difference('Magasin.count') do
      post magasins_url, params: { magasin: { pa: @magasin.pa, produit_id: @magasin.produit_id, stock: @magasin.stock } }, as: :json
    end

    assert_response 201
  end

  test "should show magasin" do
    get magasin_url(@magasin), as: :json
    assert_response :success
  end

  test "should update magasin" do
    patch magasin_url(@magasin), params: { magasin: { pa: @magasin.pa, produit_id: @magasin.produit_id, stock: @magasin.stock } }, as: :json
    assert_response 200
  end

  test "should destroy magasin" do
    assert_difference('Magasin.count', -1) do
      delete magasin_url(@magasin), as: :json
    end

    assert_response 204
  end
end
