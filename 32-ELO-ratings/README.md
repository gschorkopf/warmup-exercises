# ELO Ratings

Compute the scores of a chess match based on ELO rating system.

## Background

The ELO rating system is a popular player rater used across many sports, most famously in ranking world chess champions. It is also used in pool, baseball, and other sabermetric sports. It takes into account how experienced/talented you are, how experienced/talented your opponent is, and how much weight a win or loss should have on your rating.

When two chess players compete, the winner effectively "takes" rating points from their opponent. 

## ELO Basic Formula

Rn = Ro + C * (1 - Se)

Rn = new rating
Ro = old rating
Se = expected score (see table)
C = constant (this constant can technically change, but for the purposes of the exercise we will set the value to 30, a common value for the constant)

## ELO Rating Table Reference
This table shows you the value of Se based on the ELO score difference of the two players

ELO Score Difference = Favorite's score - Underdog's score

ELO Score Difference => Expected score
800 => 0.97
600 => 0.93
400 => 0.84
360 => 0.82
320 => 0.79
280 => 0.76
240 => 0.73
200 => 0.69
160 => 0.66
120 => 0.62
80 => 0.58
40 => 0.53
0 => 0.50
etc.

## Source
http://en.wikipedia.org/wiki/Elo_rating_system
