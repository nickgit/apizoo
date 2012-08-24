require 'test_helper'

class SpeciesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Species.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Species.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Species.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to species_url(assigns(:species))
  end

  def test_edit
    get :edit, :id => Species.first
    assert_template 'edit'
  end

  def test_update_invalid
    Species.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Species.first
    assert_template 'edit'
  end

  def test_update_valid
    Species.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Species.first
    assert_redirected_to species_url(assigns(:species))
  end

  def test_destroy
    species = Species.first
    delete :destroy, :id => species
    assert_redirected_to species_url
    assert !Species.exists?(species.id)
  end
end
