require "application_system_test_case"

class MetaFinanceirasTest < ApplicationSystemTestCase
  setup do
    @meta_financeira = meta_financeiras(:one)
  end

  test "visiting the index" do
    visit meta_financeiras_url
    assert_selector "h1", text: "Meta financeiras"
  end

  test "should create meta financeira" do
    visit meta_financeiras_url
    click_on "New meta financeira"

    fill_in "Cliente", with: @meta_financeira.cliente_id
    fill_in "Descricao", with: @meta_financeira.descricao
    fill_in "Nome", with: @meta_financeira.nome
    fill_in "Prazo", with: @meta_financeira.prazo
    fill_in "Valor", with: @meta_financeira.valor
    click_on "Create Meta financeira"

    assert_text "Meta financeira was successfully created"
    click_on "Back"
  end

  test "should update Meta financeira" do
    visit meta_financeira_url(@meta_financeira)
    click_on "Edit this meta financeira", match: :first

    fill_in "Cliente", with: @meta_financeira.cliente_id
    fill_in "Descricao", with: @meta_financeira.descricao
    fill_in "Nome", with: @meta_financeira.nome
    fill_in "Prazo", with: @meta_financeira.prazo
    fill_in "Valor", with: @meta_financeira.valor
    click_on "Update Meta financeira"

    assert_text "Meta financeira was successfully updated"
    click_on "Back"
  end

  test "should destroy Meta financeira" do
    visit meta_financeira_url(@meta_financeira)
    click_on "Destroy this meta financeira", match: :first

    assert_text "Meta financeira was successfully destroyed"
  end
end
