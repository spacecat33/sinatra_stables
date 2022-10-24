##Sinatra Stables
Welcome to the Sinatra Stables app, where you can create your own stable of horses and riders!

To start, you will need to follow the below installation instructions.

Once set up and on the webapp, sign up and follow the instructions seen on the web browser! Enjoy!

At a minimum, users can:

- Create an account, login and logout
- Add or remove horses and horse riders at Sinatra Stables
- Correct the details of any horses or horse riders at Sinatra Stables
- See other app users' horses and horse riders at Sinatra Stables


##Installation instructions
To run this app on a local server:

1. In a bash terminal of your choice, clone this repo, e.g. if using SSH, type:

    $ git@github.com:spacecat33/sinatra_stables.git 

2. In your terminal, run:

    $ cd sinatra_stables

3. In your terminal, run:

    $ shotgun 

4. In your web browser, navigate to the address provided in your terminal (usually 127.0.0.1:9393). However, if the terminal gives you a port number instead, go to http://localhost:<port>/ (Usually http://localhost:9393).

5. You will see the Sinatra Stables welcome page. You made it! Explore! 

    You can make you own account or you can use these credentials to log in as a pre-made user:
    username: ilovehorses 
    password: password

If you encounter any problems or cannot access any test account, after re-running step 2 above in your terminal, run:

    $ bundle install 

In your terminal run:  

    $ rake db:seed 

Then continue from Step 3 as above ($ run shotgun)



##Contributing
If you would like to suggest an improvement or new feature that would be very welcome! To do this:
a. fork and clone this repo
b. cd into the project folder and run bundle install
c. run rspec to make sure the tests are passing for you
d. make a new branch for your changes - try and use a relevant name git checkout -b <your-branch-name>
        eg. git checkout -b amazing-new-feature
e. make your changes and/or additions
f. push your changes to your own fork
g. submit a pull request



##License
The gem is available as open source under the terms of the MIT License, which you can view here: https://opensource.org/licenses/MIT.
