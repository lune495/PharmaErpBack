require 'test_helper'

class VenteproduitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @venteproduit = venteproduits(:one)
  end

  test "should get index" do
    get venteproduits_url, as: :json
    assert_response :success
  end

  test "should create venteproduit" do
    assert_difference('Venteproduit.count') do
      post venteproduits_url, params: { venteproduit: { produit_id: @venteproduit.produit_id, qte: @venteproduit.qte, vente_id: @venteproduit.vente_id } }, as: :json
    end

    assert_response 201
  end

  test "should show venteproduit" do
    get venteproduit_url(@venteproduit), as: :json
    assert_response :success
  end

  test "should update venteproduit" do
    patch venteproduit_url(@venteproduit), params: { venteproduit: { produit_id: @venteproduit.produit_id, qte: @venteproduit.qte, vente_id: @venteproduit.vente_id } }, as: :json
    assert_response 200
  end

  test "should destroy venteproduit" do
    assert_difference('Venteproduit.count', -1) do
      delete venteproduit_url(@venteproduit), as: :json
    end

    assert_response 204
  end
end
