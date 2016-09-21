require 'test_helper'

class EgresadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @egresado = egresados(:one)
  end

  test "should get index" do
    get egresados_url
    assert_response :success
  end

  test "should get new" do
    get new_egresado_url
    assert_response :success
  end

  test "should create egresado" do
    assert_difference('Egresado.count') do
      post egresados_url, params: { egresado: { caracter_empleo: @egresado.caracter_empleo, es_empleado: @egresado.es_empleado, fecha_egreso: @egresado.fecha_egreso } }
    end

    assert_redirected_to egresado_url(Egresado.last)
  end

  test "should show egresado" do
    get egresado_url(@egresado)
    assert_response :success
  end

  test "should get edit" do
    get edit_egresado_url(@egresado)
    assert_response :success
  end

  test "should update egresado" do
    patch egresado_url(@egresado), params: { egresado: { caracter_empleo: @egresado.caracter_empleo, es_empleado: @egresado.es_empleado, fecha_egreso: @egresado.fecha_egreso } }
    assert_redirected_to egresado_url(@egresado)
  end

  test "should destroy egresado" do
    assert_difference('Egresado.count', -1) do
      delete egresado_url(@egresado)
    end

    assert_redirected_to egresados_url
  end
end
