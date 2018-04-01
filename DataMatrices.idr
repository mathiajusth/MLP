module DataMatrices

import DataVectors
import DataIndexes

%access public export

data Mat: Nat -> Nat -> Type -> Type where
  Nil: Mat 0 _ _
  (::): Vect n a -> Mat m n a -> Mat (S m) n a

Functor (Mat m n) where
  map f Nil = Nil
  map f (v :: A) = map f v :: map f A

Indexable (Mat m) where
  index: Index m -> F m a -> a
  index F (x::xs) = x
  index (N i) (x::xs) = index i xs

u: Vect 2 Nat 
v: Vect 2 Nat 
w: Vect 2 Nat 
u = [1,2]
v = [3,4]
w = [5,6]

A: Mat 3 2 Nat 
A = [u,v,w]

{- mapdeep: (a -> b) -> Mat a m n -> Mat b m n -}
{- mapdeep _ Nil = Nil -}
{- mapdeep f (v :: A) = DataVectors.map f v :: mapdeep f A -}
{-  -}
{- map: (Vect a m -> b) -> Mat a m i -> Vect b i -}
{- map _ Nil = Nil -}
{- map f (v :: A) = f v :: map f A -}
{-  -}
{- column: Index n -> Mat t m n -> Vect t m -}
{- column F (v :: vs) = v -}
{- column (N i) (v :: vs) = column i vs -}
{-  -}
{- transpose: Mat t m n -> Mat t n m -}
