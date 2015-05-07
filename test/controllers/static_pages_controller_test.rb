#I've written a test here on the CONTROLLER because it handles web requests (displaying a page is get :about or get :settings)


require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  test "should make sure the about and settings links are prsent" do
   #first make sure we're on the default page (application.html.erb)
   get :homepage
   
   #did the page show/render correctly? success = status code 200 "ok"
   assert_response :success
   #then check for the about page
   assert_select "a[href=?]", about_path
   #then check for the settings page
   assert_select "a[href=?]", settings_path
   
 end

 test "should get about page and check title" do
  get :about
  assert_response :success
  assert_select "title", "Calories to Miles | About"
 end
 
 test "should get the settings page and check title" do
  get :settings
  assert_response :success
  assert_select "title", "Calories to Miles | Settings"
 end
 
end
