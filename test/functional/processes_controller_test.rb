require 'test_helper'

class ProcessesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Process.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Process.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Process.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to process_url(assigns(:process))
  end

  def test_edit
    get :edit, :id => Process.first
    assert_template 'edit'
  end

  def test_update_invalid
    Process.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Process.first
    assert_template 'edit'
  end

  def test_update_valid
    Process.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Process.first
    assert_redirected_to process_url(assigns(:process))
  end

  def test_destroy
    process = Process.first
    delete :destroy, :id => process
    assert_redirected_to processes_url
    assert !Process.exists?(process.id)
  end
end
