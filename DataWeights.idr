module DataWeights

import DataVectors
import DataMatrices

data Weight: Vect Nat m -> Type where
  Single: Mat Nat m n -> Weight (m :: n :: Nil)
  (::): Mat Nat m n -> Weight (n :: v) -> Weight (m :: n :: v)

{- ===testing=== -}
u: Vect Nat 2
v: Vect Nat 2
w: Vect Nat 2
a: Mat Nat 2 3
f: Weight [2,3]

u = [1,2]
v = [3,4]
w = [5,6]
a = [u,v,w]
f = Single a
