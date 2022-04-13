require "application_system_test_case"

class ProduitMagasinsTest < ApplicationSystemTestCase
  setup do
    @produit_magasin = produit_magasins(:one)
  end

  test "visiting the index" do
    visit produit_magasins_url
    assert_selector "h1", text: "Produit Magasins"
  end

  test "creating a Produit magasin" do
    visit produit_magasins_url
    click_on "New Produit Magasin"

    fill_in "Magasin", with: @produit_magasin.magasin_id
    fill_in "Produit", with: @produit_magasin.produit_id
    fill_in "Qte", with: @produit_magasin.qte
    click_on "Create Produit magasin"

    assert_text "Produit magasin was successfully created"
    click_on "Back"
  end

  test "updating a Produit magasin" do
    visit produit_magasins_url
    click_on "Edit", match: :first

    fill_in "Magasin", with: @produit_magasin.magasin_id
    fill_in "Produit", with: @produit_magasin.produit_id
    fill_in "Qte", with: @produit_magasin.qte
    click_on "Update Produit magasin"

    assert_text "Produit magasin was successfully updated"
    click_on "Back"
  end

  test "destroying a Produit magasin" do
    visit produit_magasins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Produit magasin was successfully destroyed"
  end
end
