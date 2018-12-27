require 'test_helper'

class TpedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tpedido = tpedidos(:one)
  end

  test "should get index" do
    get tpedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_tpedido_url
    assert_response :success
  end

  test "should create tpedido" do
    assert_difference('Tpedido.count') do
      post tpedidos_url, params: { tpedido: { tipopedido: @tpedido.tipopedido } }
    end

    assert_redirected_to tpedido_url(Tpedido.last)
  end

  test "should show tpedido" do
    get tpedido_url(@tpedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_tpedido_url(@tpedido)
    assert_response :success
  end

  test "should update tpedido" do
    patch tpedido_url(@tpedido), params: { tpedido: { tipopedido: @tpedido.tipopedido } }
    assert_redirected_to tpedido_url(@tpedido)
  end

  test "should destroy tpedido" do
    assert_difference('Tpedido.count', -1) do
      delete tpedido_url(@tpedido)
    end

    assert_redirected_to tpedidos_url
  end
end
