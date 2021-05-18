require 'test_helper'

class TelevisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @television = televisions(:one)
  end

  test "should get index" do
    get televisions_url
    assert_response :success
  end

  test "should get new" do
    get new_television_url
    assert_response :success
  end

  test "should create television" do
    assert_difference('Television.count') do
      post televisions_url, params: { television: { Condition: @television.Condition, LaptopName: @television.LaptopName, Location: @television.Location, Memory: @television.Memory, Price: @television.Price } }
    end

    assert_redirected_to television_url(Television.last)
  end

  test "should show television" do
    get television_url(@television)
    assert_response :success
  end

  test "should get edit" do
    get edit_television_url(@television)
    assert_response :success
  end

  test "should update television" do
    patch television_url(@television), params: { television: { Condition: @television.Condition, LaptopName: @television.LaptopName, Location: @television.Location, Memory: @television.Memory, Price: @television.Price } }
    assert_redirected_to television_url(@television)
  end

  test "should destroy television" do
    assert_difference('Television.count', -1) do
      delete television_url(@television)
    end

    assert_redirected_to televisions_url
  end
end
