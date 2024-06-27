require "test_helper"

class RelatorioFinanceirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatorio_financeiro = relatorio_financeiros(:one)
  end

  test "should get index" do
    get relatorio_financeiros_url
    assert_response :success
  end

  test "should get new" do
    get new_relatorio_financeiro_url
    assert_response :success
  end

  test "should create relatorio_financeiro" do
    assert_difference("RelatorioFinanceiro.count") do
      post relatorio_financeiros_url, params: { relatorio_financeiro: { transacoes_id: @relatorio_financeiro.transacoes_id } }
    end

    assert_redirected_to relatorio_financeiro_url(RelatorioFinanceiro.last)
  end

  test "should show relatorio_financeiro" do
    get relatorio_financeiro_url(@relatorio_financeiro)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatorio_financeiro_url(@relatorio_financeiro)
    assert_response :success
  end

  test "should update relatorio_financeiro" do
    patch relatorio_financeiro_url(@relatorio_financeiro), params: { relatorio_financeiro: { transacoes_id: @relatorio_financeiro.transacoes_id } }
    assert_redirected_to relatorio_financeiro_url(@relatorio_financeiro)
  end

  test "should destroy relatorio_financeiro" do
    assert_difference("RelatorioFinanceiro.count", -1) do
      delete relatorio_financeiro_url(@relatorio_financeiro)
    end

    assert_redirected_to relatorio_financeiros_url
  end
end
