# Leaderboard Project v2

Another leaderboard website for those people who are interested in speedrunning. Of course, it could be used for anyting that you would base off of fastest time.

-How to use

Make sure you run `rake db:migrate` and fill out the seeds with what you'd like. I already have some seeded stuff filled out, but feel free to change what you'd like. Once you do that, run `rake db:seed` to seed the database.

### Issues

-   Editing a run doesn't work
-   Trying to submit a run on the 2nd try doesn't work, as the url changes
-   Google oauth doesn't work but I'll figure it out soon
-   it took too long to make :/

### Updates

-   Most invalid routes properly direct themselves to `/games` now
