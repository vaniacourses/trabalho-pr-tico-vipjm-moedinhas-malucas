require "test_helper"

class MetaFinanceirasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meta_financeira = meta_financeiras(:one)
  end

  test "should get index" do
    get meta_financeiras_url
    assert_response :success
  end

  test "should get new" do
    get new_meta_financeira_url
    assert_response :success
  end

  test "should create meta_financeira" do
    assert_difference("MetaFinanceira.count") do
      post meta_financeiras_url, params: { meta_financeira: { cliente_id: @meta_financeira.cliente_id, descricao: @meta_financeira.descricao, nome: @meta_financeira.nome, prazo: @meta_financeira.prazo, valor: @meta_financeira.valor } }
    end

    assert_redirected_to meta_financeira_url(MetaFinanceira.last)
  end

  test "should show meta_financeira" do
    get meta_financeira_url(@meta_financeira)
    assert_response :success
  end

  test "should get edit" do
    get edit_meta_financeira_url(@meta_financeira)
    assert_response :success
  end

  test "should update meta_financeira" do
    patch meta_financeira_url(@meta_financeira), params: { meta_financeira: { cliente_id: @meta_financeira.cliente_id, descricao: @meta_financeira.descricao, nome: @meta_financeira.nome, prazo: @meta_financeira.prazo, valor: @meta_financeira.valor } }
    assert_redirected_to meta_financeira_url(@meta_financeira)
  end

  test "should destroy meta_financeira" do
    assert_difference("MetaFinanceira.count", -1) do
      delete meta_financeira_url(@meta_financeira)
    end

    assert_redirected_to meta_financeiras_url
  end
end
