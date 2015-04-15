# WhichUni

Perform a "I'm feeling lucky" style search for the phrase "which university" on the command line!

## Feedback

I chose this test because it seemed a little more of a challenge given that I've been working on mostly Rails apps recently and thought testing a CLI app would be interesting.

Please see the commit messages for decisions made along the way.

### Running the command

Once the repo is cloned and you've installed the project's dependencies with `bundle`, you can run the command using

    bundle exec bin/which-uni

Then you should see

    which-uni version 0.0.0
    Your feeling lucky search for 'which university' returned the page
      "Which? University - find the best university & degree course"
      located at http://university.which.co.uk/
    Done.

### Running the specs

To run the specs, of course

    bundle exec rspec

Then you should see

    User executes the "which-uni" command
      with search results and a working link for the first result
        returns successfully
        shows the version number for the tool
        shows the search phrase used
        shows the URL for the page of the first result
        shows the page title for the page of the first result

    WhichUni
      has a version number
