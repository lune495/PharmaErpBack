require 'test_helper'

class VentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vente = ventes(:one)
  end

  test "should get index" do
    get ventes_url, as: :json
    assert_response :success
  end

  test "should create vente" do
    assert_difference('Vente.count') do
      post ventes_url, params: { vente: { montant: @vente.montant, qte: @vente.qte } }, as: :json
    end

    assert_response 201
  end

  test "should show vente" do
    get vente_url(@vente), as: :json
    assert_response :success
  end

  test "should update vente" do
    patch vente_url(@vente), params: { vente: { montant: @vente.montant, qte: @vente.qte } }, as: :json
    assert_response 200
  end

  test "should destroy vente" do
    assert_difference('Vente.count', -1) do
      delete vente_url(@vente), as: :json
    end

    assert_response 204
  end
end
