module Weights

import DataVectors
import DataIndexes
import Matrix
import Product

%access public export

data Weights: Vect m Nat -> Type -> Type where
  Nil: Weights [m] _
  {- (::): Mat m n Nat -> MatrixVector (n :: v) -> MatrixVector (m :: n :: v) -}
  (::): Matrix 2 [m,n] a -> Weights (n::v) a -> Weights (m::n::v) a

{- ===testing=== -}
u: Matrix 1 [2] Nat
v: Matrix 1 [2] Nat
w: Matrix 1 [2] Nat
u = vect [1,2]
v = vect [3,4]
w = vect [5,6]

i: Matrix 1 [4] Nat
j: Matrix 1 [4] Nat
i = vect [1,2,3,4]
j = vect [5,6,7,8]

A: Matrix 2 [3,2] Nat 
A = glue 1 [u,v,w]

B: Matrix 2 [2,4] Nat
B = glue 1 [i,j]

f: Weights [2,4] Nat
f = [B]

g: Weights [3,2,4] Nat
g = [A,B]
