require 'test_helper'

class ProduitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produit = produits(:one)
  end

  test "should get index" do
    get produits_url, as: :json
    assert_response :success
  end

  test "should create produit" do
    assert_difference('Produit.count') do
      post produits_url, params: { produit: { codebarre: @produit.codebarre, famille_id: @produit.famille_id, nom: @produit.nom, pa: @produit.pa, pv: @produit.pv, qte: @produit.qte } }, as: :json
    end

    assert_response 201
  end

  test "should show produit" do
    get produit_url(@produit), as: :json
    assert_response :success
  end

  test "should update produit" do
    patch produit_url(@produit), params: { produit: { codebarre: @produit.codebarre, famille_id: @produit.famille_id, nom: @produit.nom, pa: @produit.pa, pv: @produit.pv, qte: @produit.qte } }, as: :json
    assert_response 200
  end

  test "should destroy produit" do
    assert_difference('Produit.count', -1) do
      delete produit_url(@produit), as: :json
    end

    assert_response 204
  end
end
