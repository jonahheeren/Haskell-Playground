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
