# Data structures in Ruby

This is a place where students can begin to learn the basics of 
data structure written in Ruby.

It is based off the "[Algorithms, 4th Edition website](http://algs4.cs.princeton.edu/)".

## Mission

Implement the queue and the stack abstract data types in Ruby based on the code
for that was implemented for the Bag ADT in class. Use good test driven development
flow to help with the development of these data structures.

For the queue, you will implement the following methods:

* constructor that takes no arguments and creates an empty Queue
* enqueue(item) - adds an item to the front queue
* dequeue - returns the item at the end of the queue
* empty? - tells you if the queue is empty or not
* size - tells you how many items are in the queue

For the stack, you will implement the following methods:

* constructor that takes no arguments and creates an empty Queue
* push(item) - adds an item to the front queue
* pop - returns the item at the end of the queue
* empty? - tells you if the queue is empty or not
* size - tells you how many items are in the queue

# Extra

Implement an each method for each data structure above. This method takes a block
as the only parameter. This method yields the items in the data structure in the order
defined by the data structure. For a queue, this is First In, First Out and for a
stack, this is Last In, First Out.

# Setup

* Fork
* Clone
* Turn on TravisCI for the fork by
  visiting https://travis-ci.org/profile/<github user name>, clicking the "Sync now" button
  and scrolling down to find the repository to build.
* Create a new branch for your work using `git checkout -b v1`
* Implement specs and code
* Push using `git push -u origin v1`

## Further Practice

This warmup can be completed multiple times to increase your comfort level with the material.
To work on this from scratch, you can:

1. Add an upstream remote that points to the original repo `git remote add upstream git@github.com:gSchool/data_structures.git`
1. Fetch the latest from the upstream remote using `git fetch upstream`
1. Create a new branch from the master branch of the upstream remote `git checkout -b v2 upstream/master`
1. Implement specs and code
1. Push using `git push -u origin v2`

Each time you do the exercise, create a new branch. For example the 3rd time you do the exercise the branch
name will be v3 instead of v2.
    