# github-events
an application to display events on a given user's repositories in github

## Currently working:
- guest can view events based on type, repo name, and user name in github
- tests stub out github's api and return basic event information based on
  githubs api documentation

## Needs to be implemented
- actually display different information based on the event type being searched
  for. right now it just displays static information fields

## Nice to haves
- [ ] error handling from github's api in case github is down, or a bad request
  happened somehow
- [ ] more robust tests covering more scenarios in user actions


this should satisfy all requirements in ![seeClickFix's
Gist](https://gist.github.com/gwright/d4a73db35147e5de5553fea7fe03ab11). There
are some nice-to-haves noted above. But everything should be in working order

## To run the application
1. clone the repo
2. cd to directory
3. run `bin/setup`
