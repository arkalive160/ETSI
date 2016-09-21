require 'test_helper'

class EstudianteEgresadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estudiante_egresado = estudiante_egresados(:one)
  end

  test "should get index" do
    get estudiante_egresados_url
    assert_response :success
  end

  test "should get new" do
    get new_estudiante_egresado_url
    assert_response :success
  end

  test "should create estudiante_egresado" do
    assert_difference('EstudianteEgresado.count') do
      post estudiante_egresados_url, params: { estudiante_egresado: { apellido: @estudiante_egresado.apellido, caracter_empleo: @estudiante_egresado.caracter_empleo, edad: @estudiante_egresado.edad, es_empleado: @estudiante_egresado.es_empleado, fecha_egreso: @estudiante_egresado.fecha_egreso, fecha_nacimiento: @estudiante_egresado.fecha_nacimiento, genero: @estudiante_egresado.genero, grupo_etnico: @estudiante_egresado.grupo_etnico, nivel_escolaridad: @estudiante_egresado.nivel_escolaridad, nombre: @estudiante_egresado.nombre, numero_identificacion: @estudiante_egresado.numero_identificacion } }
    end

    assert_redirected_to estudiante_egresado_url(EstudianteEgresado.last)
  end

  test "should show estudiante_egresado" do
    get estudiante_egresado_url(@estudiante_egresado)
    assert_response :success
  end

  test "should get edit" do
    get edit_estudiante_egresado_url(@estudiante_egresado)
    assert_response :success
  end

  test "should update estudiante_egresado" do
    patch estudiante_egresado_url(@estudiante_egresado), params: { estudiante_egresado: { apellido: @estudiante_egresado.apellido, caracter_empleo: @estudiante_egresado.caracter_empleo, edad: @estudiante_egresado.edad, es_empleado: @estudiante_egresado.es_empleado, fecha_egreso: @estudiante_egresado.fecha_egreso, fecha_nacimiento: @estudiante_egresado.fecha_nacimiento, genero: @estudiante_egresado.genero, grupo_etnico: @estudiante_egresado.grupo_etnico, nivel_escolaridad: @estudiante_egresado.nivel_escolaridad, nombre: @estudiante_egresado.nombre, numero_identificacion: @estudiante_egresado.numero_identificacion } }
    assert_redirected_to estudiante_egresado_url(@estudiante_egresado)
  end

  test "should destroy estudiante_egresado" do
    assert_difference('EstudianteEgresado.count', -1) do
      delete estudiante_egresado_url(@estudiante_egresado)
    end

    assert_redirected_to estudiante_egresados_url
  end
end
