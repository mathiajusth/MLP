module DataMatrixVectors

import DataIndexes
import DataVectors
import DataMatrices

%access public export

data MatrixVector: Vect Nat m -> Type where
  Nil: MatrixVector [m]
  (::): Mat Nat m n -> MatrixVector (n :: v) -> MatrixVector (m :: n :: v)

{- ===testing=== -}
u: Vect Nat 2
u = [1,2]
v: Vect Nat 2
v = [3,4]
w: Vect Nat 2
w = [5,6]

i: Vect Nat 4
i = [2,3,4,5]
j: Vect Nat 4
j = [3,4,5,6]

A: Mat Nat 2 3
A = [u,v,w]

B: Mat Nat 4 2
B = [i,j]

f: MatrixVector [2,3]
f = [A]

g: MatrixVector [4,2,3]
g = [B,A]
