require 'test_helper'

class ComponentePracticosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @componente_practico = componente_practicos(:one)
  end

  test "should get index" do
    get componente_practicos_url
    assert_response :success
  end

  test "should get new" do
    get new_componente_practico_url
    assert_response :success
  end

  test "should create componente_practico" do
    assert_difference('ComponentePractico.count') do
      post componente_practicos_url, params: { componente_practico: { nombre_practico: @componente_practico.nombre_practico, total_horas: @componente_practico.total_horas } }
    end

    assert_redirected_to componente_practico_url(ComponentePractico.last)
  end

  test "should show componente_practico" do
    get componente_practico_url(@componente_practico)
    assert_response :success
  end

  test "should get edit" do
    get edit_componente_practico_url(@componente_practico)
    assert_response :success
  end

  test "should update componente_practico" do
    patch componente_practico_url(@componente_practico), params: { componente_practico: { nombre_practico: @componente_practico.nombre_practico, total_horas: @componente_practico.total_horas } }
    assert_redirected_to componente_practico_url(@componente_practico)
  end

  test "should destroy componente_practico" do
    assert_difference('ComponentePractico.count', -1) do
      delete componente_practico_url(@componente_practico)
    end

    assert_redirected_to componente_practicos_url
  end
end
