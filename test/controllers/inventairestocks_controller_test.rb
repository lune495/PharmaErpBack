require 'test_helper'

class InventairestocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventairestock = inventairestocks(:one)
  end

  test "should get index" do
    get inventairestocks_url, as: :json
    assert_response :success
  end

  test "should create inventairestock" do
    assert_difference('Inventairestock.count') do
      post inventairestocks_url, params: { inventairestock: { produit_id: @inventairestock.produit_id, quantite: @inventairestock.quantite } }, as: :json
    end

    assert_response 201
  end

  test "should show inventairestock" do
    get inventairestock_url(@inventairestock), as: :json
    assert_response :success
  end

  test "should update inventairestock" do
    patch inventairestock_url(@inventairestock), params: { inventairestock: { produit_id: @inventairestock.produit_id, quantite: @inventairestock.quantite } }, as: :json
    assert_response 200
  end

  test "should destroy inventairestock" do
    assert_difference('Inventairestock.count', -1) do
      delete inventairestock_url(@inventairestock), as: :json
    end

    assert_response 204
  end
end
