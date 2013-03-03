Bowling Kata
====

These ideas are presented in Uncle Bob's [bowling kata](http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata) and are not my own. Descriptions of the katas and the rules for this one in particular can be obtained from that site in his words.
### Install

See the wiki

### Daily Actions - the 10 minute sneaks
Try to sneak these in when you get 10 minutes here or there
* http://rubymonk.com/
* http://try.github.com/
* A lesson from http://cli.learncodethehardway.org/book/
* Finger-upper-downer http://www.typing-lessons.org/Exercise_1.html


## Rules
###### Branch-n means start at branch-01 then branch-02, etcetera. Your initial branch name is today's date not a literal "YYY-MM-DD".


### The Day
* Start each day in a fresh branch: 
    * `git stash`
    * `git checkout -b "YYYY-MM-DD"`
* create our files by typing
    * `touch game_test.rb`
    * `touch game.rb`
* remove the README so that we keep clean diffs
   * `git rm README.md`
* commit our files to soruce control by typing
    * `git status`  
    * `git add .`
    * `git status`
    * `git commit -m "files ready for today"`
    * `git status`

### The Cycle

#### Scout
* Write out the next step from the diff on paper from both of our 2 files
    * `git diff branch-n game_test.rb`
    * `git diff branch-n game.rb`
* It's OK if one of the two commands doesn't return anything, the files don't always change. 
* Turn the paper over so you cannot see it. 

#### game_test
* Edit game_test.rb to make it match your notes
* Do not guess, do not rush. If you are not certain of the next step then peek at your notes.
* Double check your game_test.rb code
    * `git diff branch-n game_test.rb`
* Run your failing test:
    * `ruby game_test.rb`

#### game
* Edit game.rb to make it match your notes
* Run your test
    * `ruby game_test.rb`
* If your test isn't passing then see what is wrong 
    * `git diff branch-n`

#### Finish
* Did you need to look at your notes to complete this step?
    * If you still need to look at your notes then you're not ready to move on. Reset and start back at **scout** 
        * `git reset HEAD -hard`
    * If you can complete this section from memory then go to **checkout**.

#### git checkout

* to see what has changed since your last commit
    * `git diff HEAD`
* Run tests one more time to be sure that the test passes before committing
    * `ruby game_test.rb`
* Add the test and git add game.rb to add our app.
    * `git add game_test.rb`
* to be sure both files have been staged and are ready
    * `git status` 
* to add our changes to source control
    * `git commit -m "finished step-n"`

* go back to **scout** and get ready for the next step!
