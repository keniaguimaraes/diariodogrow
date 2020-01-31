require 'test_helper'

class TipoSolosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_solo = tipo_solos(:one)
  end

  test "should get index" do
    get tipo_solos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_solo_url
    assert_response :success
  end

  test "should create tipo_solo" do
    assert_difference('TipoSolo.count') do
      post tipo_solos_url, params: { tipo_solo: { descricao: @tipo_solo.descricao } }
    end

    assert_redirected_to tipo_solo_url(TipoSolo.last)
  end

  test "should show tipo_solo" do
    get tipo_solo_url(@tipo_solo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_solo_url(@tipo_solo)
    assert_response :success
  end

  test "should update tipo_solo" do
    patch tipo_solo_url(@tipo_solo), params: { tipo_solo: { descricao: @tipo_solo.descricao } }
    assert_redirected_to tipo_solo_url(@tipo_solo)
  end

  test "should destroy tipo_solo" do
    assert_difference('TipoSolo.count', -1) do
      delete tipo_solo_url(@tipo_solo)
    end

    assert_redirected_to tipo_solos_url
  end
end
