# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
        This application requires the sinatra libraryto access the methods in my controllers like: get and post. These methods have allowed the application to respond to HTTP requests. As Sinatra is rack-based, this app also uses rack commands such as those listed when running $ rack -T in the terminal.

- [x] Use ActiveRecord for storing information in a database
        This application uses the ActiveRecord gem in gemfile and establishes the connection between the ruby models in the models folder and the database in the db folder. This is achieved through the gems, the code in the environment.rb file, which begins with "ActiveRecord::Base.establish_connection", and ensuring the models and the db tables inherit from ActiveRecord Base and Mirgation respectively. 
- [x] Include more than one model class (e.g. User, Post, Category)
        There is a User model and a Horse model.
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
        The User model has_many horses.
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
        The Horse model belongs_to a User.
- [x] Include user accounts with unique login attribute (username or email)
        The User model, controller and bcrypt gem apply the unique login attributes requirements. The if/else code used in the HorsesController also helps ensure the right user has the right permissions throughout the app.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
        All CRUD routes have been applied to the HorsesController.
- [x] Ensure that users can't modify content created by other users
        The if/else code used in the HorsesController also helps ensure the right user has the right permissions throughout the app.
- [x] Include user input validations
        User input validations have been applied to the UsersController and the forms in the Users view files.
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
        Attempted with the erb :'horses/new' view file with the HorsesController however unsuccessful.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
        Completed, see the README.md file.

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message