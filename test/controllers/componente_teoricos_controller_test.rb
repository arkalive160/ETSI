require 'test_helper'

class ComponenteTeoricosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @componente_teorico = componente_teoricos(:one)
  end

  test "should get index" do
    get componente_teoricos_url
    assert_response :success
  end

  test "should get new" do
    get new_componente_teorico_url
    assert_response :success
  end

  test "should create componente_teorico" do
    assert_difference('ComponenteTeorico.count') do
      post componente_teoricos_url, params: { componente_teorico: { nombre_teorico: @componente_teorico.nombre_teorico, total_horas: @componente_teorico.total_horas } }
    end

    assert_redirected_to componente_teorico_url(ComponenteTeorico.last)
  end

  test "should show componente_teorico" do
    get componente_teorico_url(@componente_teorico)
    assert_response :success
  end

  test "should get edit" do
    get edit_componente_teorico_url(@componente_teorico)
    assert_response :success
  end

  test "should update componente_teorico" do
    patch componente_teorico_url(@componente_teorico), params: { componente_teorico: { nombre_teorico: @componente_teorico.nombre_teorico, total_horas: @componente_teorico.total_horas } }
    assert_redirected_to componente_teorico_url(@componente_teorico)
  end

  test "should destroy componente_teorico" do
    assert_difference('ComponenteTeorico.count', -1) do
      delete componente_teorico_url(@componente_teorico)
    end

    assert_redirected_to componente_teoricos_url
  end
end
