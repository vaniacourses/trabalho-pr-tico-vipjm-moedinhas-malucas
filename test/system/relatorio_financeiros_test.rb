require "application_system_test_case"

class RelatorioFinanceirosTest < ApplicationSystemTestCase
  setup do
    @relatorio_financeiro = relatorio_financeiros(:one)
  end

  test "visiting the index" do
    visit relatorio_financeiros_url
    assert_selector "h1", text: "Relatorio financeiros"
  end

  test "should create relatorio financeiro" do
    visit relatorio_financeiros_url
    click_on "New relatorio financeiro"

    fill_in "Transacoes", with: @relatorio_financeiro.transacoes_id
    click_on "Create Relatorio financeiro"

    assert_text "Relatorio financeiro was successfully created"
    click_on "Back"
  end

  test "should update Relatorio financeiro" do
    visit relatorio_financeiro_url(@relatorio_financeiro)
    click_on "Edit this relatorio financeiro", match: :first

    fill_in "Transacoes", with: @relatorio_financeiro.transacoes_id
    click_on "Update Relatorio financeiro"

    assert_text "Relatorio financeiro was successfully updated"
    click_on "Back"
  end

  test "should destroy Relatorio financeiro" do
    visit relatorio_financeiro_url(@relatorio_financeiro)
    click_on "Destroy this relatorio financeiro", match: :first

    assert_text "Relatorio financeiro was successfully destroyed"
  end
end
