require 'test_helper'

class ContractsControllerTest < ActionController::TestCase
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post :create, contract: { credit_union: @contract.credit_union, end_date: @contract.end_date, landlord_id_id: @contract.landlord_id_id, payment_due_date: @contract.payment_due_date, start_date: @contract.start_date, tenant_id_id: @contract.tenant_id_id }
    end

    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should show contract" do
    get :show, id: @contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contract
    assert_response :success
  end

  test "should update contract" do
    patch :update, id: @contract, contract: { credit_union: @contract.credit_union, end_date: @contract.end_date, landlord_id_id: @contract.landlord_id_id, payment_due_date: @contract.payment_due_date, start_date: @contract.start_date, tenant_id_id: @contract.tenant_id_id }
    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete :destroy, id: @contract
    end

    assert_redirected_to contracts_path
  end
end
