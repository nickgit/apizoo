require 'test_helper'

class HabitatsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Habitat.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Habitat.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Habitat.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to habitat_url(assigns(:habitat))
  end

  def test_edit
    get :edit, :id => Habitat.first
    assert_template 'edit'
  end

  def test_update_invalid
    Habitat.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Habitat.first
    assert_template 'edit'
  end

  def test_update_valid
    Habitat.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Habitat.first
    assert_redirected_to habitat_url(assigns(:habitat))
  end

  def test_destroy
    habitat = Habitat.first
    delete :destroy, :id => habitat
    assert_redirected_to habitats_url
    assert !Habitat.exists?(habitat.id)
  end
end
