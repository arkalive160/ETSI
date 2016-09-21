require 'test_helper'

class LocacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locacion = locacions(:one)
  end

  test "should get index" do
    get locacions_url
    assert_response :success
  end

  test "should get new" do
    get new_locacion_url
    assert_response :success
  end

  test "should create locacion" do
    assert_difference('Locacion.count') do
      post locacions_url, params: { locacion: { ciudad: @locacion.ciudad, direccion: @locacion.direccion, pais: @locacion.pais } }
    end

    assert_redirected_to locacion_url(Locacion.last)
  end

  test "should show locacion" do
    get locacion_url(@locacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_locacion_url(@locacion)
    assert_response :success
  end

  test "should update locacion" do
    patch locacion_url(@locacion), params: { locacion: { ciudad: @locacion.ciudad, direccion: @locacion.direccion, pais: @locacion.pais } }
    assert_redirected_to locacion_url(@locacion)
  end

  test "should destroy locacion" do
    assert_difference('Locacion.count', -1) do
      delete locacion_url(@locacion)
    end

    assert_redirected_to locacions_url
  end
end
