# GITMAD Leaderboard

This is a simple leaderboard built on Rails for the GITMAD coin flip app.

## Installing

### Dependencies

The leaderboard uses Postgres as its database, make sure that's installed.

### Getting up and running

Clone the repo, ``cd`` into it, install the gems, and create the database.

```
$ git clone git@github.com:tomelm/gitmad-leaderboard.git
$ cd gitmad-leaderboard
$ bundle install
$ rake db:create
$ rake db:schema:load
$ rails s
```

The app will be running at ``http://localhost:3000``

## API endpoints

### ``GET /`` or ``GET /scores``

This returns an HTML page containing all of the scores.

### ``GET /scores.json``

Returns an array of JSON objects containing all of the scores. Looks like:

```
[
  {
    "created_at": "2012-11-18T20:02:48Z",
    "id": 1,
    "name": "tomer",
    "score": 1073741824,
    "updated_at": "2012-11-18T20:03:24Z"
  },
  {
    // ...
  }
]
```

### ``POST /scores`` or ``POST /scores.json``

This API endpoint allows you to add scores to the leaderboard. The app expects a JSON object of a specific format:

```
{ 
  'score': {
    'name': 'tomer',
    'score': 404
  }
}
```