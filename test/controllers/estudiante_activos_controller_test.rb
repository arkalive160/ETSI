require 'test_helper'

class EstudianteActivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estudiante_activo = estudiante_activos(:one)
  end

  test "should get index" do
    get estudiante_activos_url
    assert_response :success
  end

  test "should get new" do
    get new_estudiante_activo_url
    assert_response :success
  end

  test "should create estudiante_activo" do
    assert_difference('EstudianteActivo.count') do
      post estudiante_activos_url, params: { estudiante_activo: { apellido: @estudiante_activo.apellido, codigo_estudiante: @estudiante_activo.codigo_estudiante, edad: @estudiante_activo.edad, fecha_ingreso: @estudiante_activo.fecha_ingreso, fecha_nacimiento: @estudiante_activo.fecha_nacimiento, genero: @estudiante_activo.genero, grupo_etnico: @estudiante_activo.grupo_etnico, nivel_escolaridad: @estudiante_activo.nivel_escolaridad, nombre: @estudiante_activo.nombre, numero_identificacion: @estudiante_activo.numero_identificacion } }
    end

    assert_redirected_to estudiante_activo_url(EstudianteActivo.last)
  end

  test "should show estudiante_activo" do
    get estudiante_activo_url(@estudiante_activo)
    assert_response :success
  end

  test "should get edit" do
    get edit_estudiante_activo_url(@estudiante_activo)
    assert_response :success
  end

  test "should update estudiante_activo" do
    patch estudiante_activo_url(@estudiante_activo), params: { estudiante_activo: { apellido: @estudiante_activo.apellido, codigo_estudiante: @estudiante_activo.codigo_estudiante, edad: @estudiante_activo.edad, fecha_ingreso: @estudiante_activo.fecha_ingreso, fecha_nacimiento: @estudiante_activo.fecha_nacimiento, genero: @estudiante_activo.genero, grupo_etnico: @estudiante_activo.grupo_etnico, nivel_escolaridad: @estudiante_activo.nivel_escolaridad, nombre: @estudiante_activo.nombre, numero_identificacion: @estudiante_activo.numero_identificacion } }
    assert_redirected_to estudiante_activo_url(@estudiante_activo)
  end

  test "should destroy estudiante_activo" do
    assert_difference('EstudianteActivo.count', -1) do
      delete estudiante_activo_url(@estudiante_activo)
    end

    assert_redirected_to estudiante_activos_url
  end
end
