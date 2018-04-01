module DataVectors

import DataIndexes
%access public export

data Vect: Nat -> Type -> Type where
  Nil: Vect 0 t
  (::): t -> Vect m t -> Vect (S m) t

Functor (Vect m) where
  map _ Nil = Nil
  map f (x::xs) = f x :: map f xs

size: Vect m a -> Nat
size Nil = 0
size (x::xs) = 1 + size xs

vectorify: (xs: List a) -> Vect (size xs) a
vectorify Nil = Nil
vectorify (x::xs) = x :: vectorify xs

listify: (xs: Vect m a) -> List a
listify Nil = Nil
listify (x::xs) = x :: listify xs

interface ShallowIndexable (F: Nat -> Type -> Type) where
  index: Index m -> F m a -> a

ShallowIndexable Vect where
  index F (x::xs) = x
  index (N i) (x::xs) = index i xs

{- map: (a -> b) -> Vect a m -> Vect b m -}
{- map _ Nil = Nil -}
{- map f (x :: xs) = f x :: map f xs -}
{-  -}
x: Vect 2 Nat
x = [1,2]
{-  -}
{- switch: (Type -> Nat -> Type) -> Nat -> Type -> Type -}
{- switch f x y = f y x -}
{- y: (switch Vect) 2 Nat -}
{- y = [1,2] -}

{- newLine: String -}
{- newLine = " " -}
{- upperBound: String -}
{- upperBound = "-" ++ newLine -}
{- lowerBound: String -}
{- lowerBound = "-" -}
{- separator : String -}
{- separator = newLine ++ "~" -}

{- Show t => Show (Vect t m) where -}
{-   show v = upperBound ++ show' v ++ lowerBound where -}
{-     show': Vect t m -> String -}
{-     show' Nil           = "" -}
{-     show' (last :: Nil) = show last -}
{-     show' (head :: v)   = show head ++ separator ++ show' v -}
