require 'test_helper'

class ProduitMagasinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produit_magasin = produit_magasins(:one)
  end

  test "should get index" do
    get produit_magasins_url
    assert_response :success
  end

  test "should get new" do
    get new_produit_magasin_url
    assert_response :success
  end

  test "should create produit_magasin" do
    assert_difference('ProduitMagasin.count') do
      post produit_magasins_url, params: { produit_magasin: { magasin_id: @produit_magasin.magasin_id, produit_id: @produit_magasin.produit_id, qte: @produit_magasin.qte } }
    end

    assert_redirected_to produit_magasin_url(ProduitMagasin.last)
  end

  test "should show produit_magasin" do
    get produit_magasin_url(@produit_magasin)
    assert_response :success
  end

  test "should get edit" do
    get edit_produit_magasin_url(@produit_magasin)
    assert_response :success
  end

  test "should update produit_magasin" do
    patch produit_magasin_url(@produit_magasin), params: { produit_magasin: { magasin_id: @produit_magasin.magasin_id, produit_id: @produit_magasin.produit_id, qte: @produit_magasin.qte } }
    assert_redirected_to produit_magasin_url(@produit_magasin)
  end

  test "should destroy produit_magasin" do
    assert_difference('ProduitMagasin.count', -1) do
      delete produit_magasin_url(@produit_magasin)
    end

    assert_redirected_to produit_magasins_url
  end
end
