# Time Mastr

This is an app created to help employees keep track of their time worked.
## Built with Ruby on Rails 5

## Features:
  - Approval Workflow
  - SMS Sending with Twilio API -> link to allow employees to log their time if it was not done the day prior.
  - Adminstrate Gem was used for the admin dashboard to manage employees and admins.


  - To install and run make sure to:

  ```ruby
  # bundle exec rake db:create:migrate
  # bundle exec rake db:seed
  ```
  Since this is an enterprise style app, you will need to log in and will NOT have the ability to create a new user initially. The seed file comes prepared with a test user and test admin user. These have been created so that you may test out the functionality of the app. After running the seed file, you can log in as a user by entering:


  | User Type       | Admin          | Employee  |
  | ------------- |:-------------:| -----:|
  | User Name      | myadmin@test.com | test@test.com |
  | User Password    | asdfasdf      |   asdfasdf |

  
