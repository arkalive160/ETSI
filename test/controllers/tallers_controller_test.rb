require 'test_helper'

class TallersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taller = tallers(:one)
  end

  test "should get index" do
    get tallers_url
    assert_response :success
  end

  test "should get new" do
    get new_taller_url
    assert_response :success
  end

  test "should create taller" do
    assert_difference('Taller.count') do
      post tallers_url, params: { taller: { email: @taller.email, fax: @taller.fax, inst_contraparte: @taller.inst_contraparte, nombre_proyecto: @taller.nombre_proyecto, responsable: @taller.responsable, telefono: @taller.telefono } }
    end

    assert_redirected_to taller_url(Taller.last)
  end

  test "should show taller" do
    get taller_url(@taller)
    assert_response :success
  end

  test "should get edit" do
    get edit_taller_url(@taller)
    assert_response :success
  end

  test "should update taller" do
    patch taller_url(@taller), params: { taller: { email: @taller.email, fax: @taller.fax, inst_contraparte: @taller.inst_contraparte, nombre_proyecto: @taller.nombre_proyecto, responsable: @taller.responsable, telefono: @taller.telefono } }
    assert_redirected_to taller_url(@taller)
  end

  test "should destroy taller" do
    assert_difference('Taller.count', -1) do
      delete taller_url(@taller)
    end

    assert_redirected_to tallers_url
  end
end
