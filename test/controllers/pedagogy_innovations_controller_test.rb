require 'test_helper'

class PedagogyInnovationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedagogy_innovation = pedagogy_innovations(:one)
  end

  test "should get index" do
    get pedagogy_innovations_url
    assert_response :success
  end

  test "should get new" do
    get new_pedagogy_innovation_url
    assert_response :success
  end

  test "should create pedagogy_innovation" do
    assert_difference('PedagogyInnovation.count') do
      post pedagogy_innovations_url, params: { pedagogy_innovation: { achievements: @pedagogy_innovation.achievements, description: @pedagogy_innovation.description, title: @pedagogy_innovation.title, user_id: @pedagogy_innovation.user_id } }
    end

    assert_redirected_to pedagogy_innovation_url(PedagogyInnovation.last)
  end

  test "should show pedagogy_innovation" do
    get pedagogy_innovation_url(@pedagogy_innovation)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedagogy_innovation_url(@pedagogy_innovation)
    assert_response :success
  end

  test "should update pedagogy_innovation" do
    patch pedagogy_innovation_url(@pedagogy_innovation), params: { pedagogy_innovation: { achievements: @pedagogy_innovation.achievements, description: @pedagogy_innovation.description, title: @pedagogy_innovation.title, user_id: @pedagogy_innovation.user_id } }
    assert_redirected_to pedagogy_innovation_url(@pedagogy_innovation)
  end

  test "should destroy pedagogy_innovation" do
    assert_difference('PedagogyInnovation.count', -1) do
      delete pedagogy_innovation_url(@pedagogy_innovation)
    end

    assert_redirected_to pedagogy_innovations_url
  end
end
