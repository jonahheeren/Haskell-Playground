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
