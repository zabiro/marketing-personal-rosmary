require 'test_helper'

class IngresopedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingresopedido = ingresopedidos(:one)
  end

  test "should get index" do
    get ingresopedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_ingresopedido_url
    assert_response :success
  end

  test "should create ingresopedido" do
    assert_difference('Ingresopedido.count') do
      post ingresopedidos_url, params: { ingresopedido: { Ndefactura: @ingresopedido.Ndefactura } }
    end

    assert_redirected_to ingresopedido_url(Ingresopedido.last)
  end

  test "should show ingresopedido" do
    get ingresopedido_url(@ingresopedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingresopedido_url(@ingresopedido)
    assert_response :success
  end

  test "should update ingresopedido" do
    patch ingresopedido_url(@ingresopedido), params: { ingresopedido: { Ndefactura: @ingresopedido.Ndefactura } }
    assert_redirected_to ingresopedido_url(@ingresopedido)
  end

  test "should destroy ingresopedido" do
    assert_difference('Ingresopedido.count', -1) do
      delete ingresopedido_url(@ingresopedido)
    end

    assert_redirected_to ingresopedidos_url
  end
end
