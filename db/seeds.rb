
users = User.create! ([
      {
        name: "i_hearu",
        email: "jean1@example.com",
        password: "Wolverine1",
        password_confirmation: "Wolverine1"
      },

      {
        name: "mr_clean",
        email: "professorx@example.com",
        password: "Iknowall",
        password_confirmation: "Iknowall"
      },

      {
        name: "superhot",
        email: "cyclops@example.com",
        password: "Smolderingeyes",
        password_confirmation: "Smolderingeyes"
      },

      {
        name: "bright_eyes",
        email: "storm@example.com",
        password: "Electrifying",
        password_confirmation: "Electrifying"
      },

      {
        name: "untouchable",
        email: "rogue@example.com",
        password: "Donttouchme",
        password_confirmation: "Donttouchme"
      },

      {
        name: "mr_magnet",
        email: "magnito@example.com",
        password: "Magneticman",
        password_confirmation: "Magneticman"
      }])



    subreddits = Subreddit.create! ([
          {
            name: "Funny"
          },
          {
            name: "Entertainment"
          },
          {
            name: "News"
          },
          {
            name: "Exciting"
          }])


      links = Link.create! ([
           {
              title: "Ash Rules!",
              summary: "Evil Dead to making new Series",
              url: "http://deadline.com/2015/07/bruce-campbell-says-ash-vs-evil-dead-series-could-lead-to-more-dead-movies-tca-1201488670",
              user_id: users.sample.id,
              subreddit_id: subreddits.sample.id
            },
            {
              title: "Game of Thrones the Musical!",
              summary: "Coldplay and Game of Thrones actors make a musical. It's awesome!",
              url: "http://www.rollingstone.com/music/videos/watch-coldplay-adapt-game-of-thrones-into-ridiculous-musical-20150522",
              user_id: users.sample.id,
              subreddit_id: subreddits.sample.id
            },
            {
              title: "The Force!",
              summary: "New Star Wars Trailer",
              url: "http://www.starwars.com/the-force-awakens",
              user_id: users.sample.id,
              subreddit_id: subreddits.sample.id
            },
            {
              title: "Zim is back!",
              summary: "The new Zim comic series and it has so many awesome varient covers",
              url: "http://nerdist.com/invader-zim-comic-book-gets-a-full-slate-of-variant-covers",
              user_id: users.sample.id,
              subreddit_id: subreddits.sample.id
            },
            {
              title: "Little girl draws a picture of bad guy",
              summary: "Little girls sketch leads to a robbers arrest",
              url: "http://www.today.com/video/11-year-old-girls-stick-figure-leads-to-burglars-arrest-545677379585",
              user_id: users.sample.id,
              subreddit_id: subreddits.sample.id
            },
            {
              title: "I want this new mug!",
              summary: "Mug that keeps your coffee at the perfect temperature",
              url: "http://www.digitaltrends.com/home/ember-smart-mug",
              user_id: users.sample.id,
              subreddit_id: subreddits.sample.id
            },
            {
              title: "Kitties are awesome!",
              summary: "Cute kitty pics",
              url: "http://www.funnycatpix.com",
              user_id: users.sample.id,
              subreddit_id: subreddits.sample.id
            },
            {
              title: "Kevin Smith at it again",
              summary: "Announced new Mallrats movie as well as Clerks 3",
              url: "http://www.slashfilm.com/kevin-smith-mallrats-2-2015/",
              user_id: users.sample.id,
              subreddit_id: subreddits.sample.id,
            },
            {
              title: "Boondock Saints still going",
              summary: "New Boondock saints movie confirmed by Norman Reedus",
              url: "http://www.franchiseherald.com/articles/19373/20150102/norman-reedus-the-boondock-saints-3-release-date-plot-title-the-walking-dead.htm",
              user_id: users.sample.id,
              subreddit_id: subreddits.sample.id
            },
            {
              title: "Next WOW expansion",
              summary: "The next World of Warcraft expansion already being planned",
              url: "http://www.gamespot.com/articles/wows-next-expansions-already-planned/1100-6429583/",
              user_id: users.sample.id,
              subreddit_id: subreddits.sample.id
           }])
