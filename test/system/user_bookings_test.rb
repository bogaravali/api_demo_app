require "application_system_test_case"

class UserBookingsTest < ApplicationSystemTestCase
  setup do
    @user_booking = user_bookings(:one)
  end

  test "visiting the index" do
    visit user_bookings_url
    assert_selector "h1", text: "User bookings"
  end

  test "should create user booking" do
    visit user_bookings_url
    click_on "New user booking"

    click_on "Create User booking"

    assert_text "User booking was successfully created"
    click_on "Back"
  end

  test "should update User booking" do
    visit user_booking_url(@user_booking)
    click_on "Edit this user booking", match: :first

    click_on "Update User booking"

    assert_text "User booking was successfully updated"
    click_on "Back"
  end

  test "should destroy User booking" do
    visit user_booking_url(@user_booking)
    click_on "Destroy this user booking", match: :first

    assert_text "User booking was successfully destroyed"
  end
end
