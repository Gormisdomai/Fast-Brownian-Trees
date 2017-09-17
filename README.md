# Fast-Brownian-Trees

Brownian trees with markov chains.

## Brownian Trees

Brownian trees are a computational curiosity from the 1990s that I came across the other day.

They’re a kind of organically growing tree like structure which looks like this:

![brownian tree](https://user-images.githubusercontent.com/5650821/30519868-f4761578-9ba0-11e7-818d-1c66e9cf69bd.png)


The steps for generating them are simple to understand if you know what a 2D random walk [aka brownian motion] is.

1. Pick any set of points on the screen (most people start with just 1). Call these points the “seeds” and make up our baby tree.

2. Pick a random, unoccupied point on the screen and start a 2D random walk from that point (don’t draw the path this walk takes).

3. The random walk ends when your point comes into contact with the tree (that is arrives at a point adjacent to any already occupied square).

4. We colour the square where the random walk ended and then pick a new point and start a new random walk (returning to step 2).


This algorithm p a i n f u l l y   s l o w.

Back in the 90s brownian trees took months to grow - so sitting back and watching them was a cathartic kind digital gardening for some people.

## Fast Brownian Trees

In this repo we're trying to model this process with markov chains to run it faster. The idea is to set up a transition matrix for each stage of the tree's evoloution, and skip having run the random walk by computing the absorbing probabilities for each possible square it could end up in.
