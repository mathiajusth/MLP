module Matrix

import DataVectors
import DataIndexes
import Product

%access public export
Path: (signature: Vect dim Nat) -> Type 
Path s = Product (listify (map Index s))

interface Indexable (F: Vect m Nat -> Type -> Type) where
  index: F s a -> Path s -> a

data Matrix:
  (dim: Nat) ->
  (signature: Vect dim Nat) ->
  Type -> Type
    where
  {- Nothing: Matrix 0 [] _ -}
  Nil: (dim: Nat) -> Matrix (S dim)  (0::xs) _
  Scalar: a -> Matrix 0 [] a
  (::): Matrix d is a -> Matrix (S d) (i::is) a -> Matrix (S d) ((S i):: is) a

Indexable (Matrix d) where
  index (Scalar x) Nil = x
  index (m::ms) (F::is) = index m is
  index (m::ms) (N i::is) = index ms (i::is)

vect: (v: Vect m a) -> Matrix 1 [m] a
vect Nil = Nil 0 
vect (x::xs) = Scalar x :: vect xs

glue: (d: Nat) -> Vect m (Matrix d s a) -> Matrix (S d) (m::s) a
glue m Nil = Nil m
glue m (x::xs) = x :: glue m xs

-- Examples - glue + vect:
vectEx: Matrix 1 [2] Char
vectEx = vect ['a', 'b']

mat1dExample: Matrix 1 [2] Char
mat1dExample = glue 0 [Scalar 'c', Scalar 'd']

mat2dExample: Matrix 2 [2,2] Char
mat2dExample = glue 1 [vectEx, mat1dExample]

matRealUseEx: Matrix 2 [3,2] Nat
matRealUseEx = glue 1 [
  vect [1, 2],
  vect [2, 3],
  vect [4, 5]
]

matRealUseEx2: Matrix 3 [2,2,2] Nat
matRealUseEx2 = glue 2 [
  glue 1 [
    vect [111,112],
    vect [121,122]
  ],
  glue 1 [
    vect [211,212],
    vect [221,222]
  ]
]
--
take: Vect m a -> (i:Index m) -> Vect (take m i) a
take (x::xs) F = (x::Nil)
take (x::xs) (N i) = x :: take xs i

drop: Vect m a -> (i: Index m) -> Vect (drop m i) a
drop (x::xs) F = xs
drop (x::xs) (N i) = drop xs i

walk: Matrix d s a -> (i: Index d) -> Path (take s i) -> Matrix (drop d i) (drop s i) a
walk (m::ms) F [F] = m
walk (m::ms) (N j) (F::is) = walk m j is
walk (m::ms) j ((N i)::is) = walk ms j (i::is)

{- update: Matrix d s a -> (i:Index d) -> Path (take i s) -> Matrix d -> Matrix d s a -}
