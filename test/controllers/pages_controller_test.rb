require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get servicios" do
    get :servicios
    assert_response :success
  end

  test "should get regiones" do
    get :regiones
    assert_response :success
  end

  test "should get eventos" do
    get :eventos
    assert_response :success
  end

  test "should get contactenos" do
    get :contactenos
    assert_response :success
  end

end
