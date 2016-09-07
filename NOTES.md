## To dos:
+ in user controller -- camper profile needs to be created on sign_up
+ sign up page - field for fcc profile
+ edit camper page
+ create camper_profile via camper_profile controller
+ sort leaderboard by points
+ fix non-admin view of leaderboard -- only link to edit
  -- eventually: make multiple edits?
+ merge show, camper_profile.html.erb pages
+ rename camper_profile to camper?
+ collect git hub handles?
+ add pundit authorization for show, edit, delete, create

++ start the scraping process! ++

+ what's up with the master role?

+ improve/test user/camper creation, linkage

+ create db models for projects, challenges
  -- ? do I need this? -- Can I just link projects and challenges? Don't need db storage?
    --- But! If I did implement db would that decrease load times
  -- add most recent project, most recent challenge to view page

### once finished with user and camper create, edit, view, delete AND scraping ###
+ add user ability to follow camper_profiles -- user join table
+ user follow view pages
+ user view page


## much later
+ make even drier!
+ check logic in proper location
+ go through requirements

## much, much later
+ add git hub, bit bucket

+ improve seed data -- import actual usernames submitted


## Resources used:
+ Rails-Devise-Pundit sample app -- https://github.com/RailsApps/rails-devise-pundit

+ Devise docs -- https://github.com/plataformatec/devise#getting-started

+ heroku maintenance:off https://devcenter.heroku.com/articles/maintenance-mode

+ http://www.theodinproject.com/ruby-on-rails/active-record-queries

+ http://guides.rubyonrails.org/active_record_querying.html
