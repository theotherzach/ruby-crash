Bowling Kata
====

These ideas are presented in Uncle Bob's [bowling kata](http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata) and are not my own. Descriptions of the katas and the rules for this one in particular can be obtained from that site in his words.
### Install

* clone the repo, instal our deps, and pull down all remote branches

```
    git clone git@github.com:theotherzach/bowling.git
    gem install minitest turn
    cd bowling
    for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master`; do git branch --track ${branch##*/} $branch; done

```

* edit the ~/.gitconfig to be sure we've got human readable diffs

```
   [color]
      ui = auto
   [alias]
      di = diff --word-diff
   [push]
      default = simple
```


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

#### Scout and note
* Find out what the next step is: `git diff branch-n`
* Write out the next step from the diff on paper, label it branch-n.
* Turn the paper over so you cannot see it. 

#### game_test
* Edit game_test.rb to make it match branch-n. (Not all steps have a game_test.rb change. Go directly to green if you don't need to make a change to game_test.rb)
* Do not guess, do not rush. If you are not certain of the next step then peek at your notes.
* Verify that your test matches the next step by typing `git diff branch-n game_test.rb`
* From the command line, run your failing test: `ruby game_test.rb`

#### game
* Edit game.rb to make it match branch-n. (Not all steps have a game.rb change. Go to finish if you don't need to make a change.)
* Your tests should be green, verify with `ruby game_test.rb`
* If your test isn't passing then see what is wrong by typing `git diff branch-n`

#### Finish
* Even if your test pass, still be sure you code matches exactly by typing `git diff branch-n`
* Did you need to look at your notes to get the git diff to match up?
    * If you still need to look at your notes then you're not ready to move on. Reset and start back at scout by typing git reset HEAD -hard
    * If you can complete this section from memory then go to checkout.

#### git checkout

* `git diff HEAD` to see what has changed since your last commit
* `ruby game_test.rb` one last time to be sure that the test passes before committing
* `git add game_test.rb` to add the test and git add game.rb to add our app.
* `type git status` to be sure both files have been staged and are ready
* `git commit -m "finished step-n"` to add our changes to source control

* go back to scout and do it again
