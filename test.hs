-- Just a set of notes and practice using examples
-- taken from Learn You a Haskell

-- Basic Function definition
doubleMe x = x + x

-- Function definition using initial funtion
doubleUs x y = doubleMe x + doubleMe y

-- All if conditions must contain an else clause. Return must be guaranteed.
doubleSmallNumber x = if x > 100
                        then x
                        else doubleMe x

-- Apostrophe typically denotes non-lazy fn
doubleSmallNumber' x = (doubleSmallNumber x) + 1

-- Definition. Defs/Fn can't begin with caps
conanO'Brien = "It's me, Conan O'Brien!"

-- Note: Internally, haskell must traverse all elements on the left side
-- before appending which can be time costly.
list = [1, 2, 3] ++ [4, 5, 6] -- Concat via ++ operator

-- Cons opperator adds element to beginning of list.
cons = 5: [2,3,4,5]

-- !! gets an element at that index. Indices begin at 0.
index = [9.4,33.2,96.2,11.2,23.25] !! 1

-- List comparisons compare the head, if equal then traverses until condition can be evaled.
headCompare = [3,2,1] > [2,10,100]

-- Additional functions that can be performed on a list:
-- head, tail, init, last, length, null, reverse, take, drop
-- maximum, minimum, sum, product, elem(infix, evals if elem is in list)

-- Note: Probs not a good idea to use floats in ranges due to imprecision
basicRange = [1..20]
stepRange = [2,4..20]

-- Useful Infinite sequences
haha = take 12 (cycle "LOL ")

-- List Comprehension
evenToTwenty = [x*2 | x <- [1..10]]
comprehensionCondition = [ x | x <- [50..100], x `mod` 7 == 3]
vectorMult = [ x*y | x <- [2,5,10], y <- [8,10,11]]
nouns = ["hobo", "frog", "pope"]
adjectives = ["lazy", "grouchy", "scheming"]
descriptions = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

-- Tuples
-- fst (8, 11) grabs the first element
-- snd (8, 11) grabs the second component
-- fst && snd only work for two element tuples
numsAndNumWords = zip [1 .. 5] ["one", "two", "three", "four", "five"]
-- zip works against jagged lists too. Stopping at the shorter list length

-- Using list comprehenstions and tuples together
-- Find all right triangles where the sides are ints && smaller than 10 && perimeter == 24
rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
