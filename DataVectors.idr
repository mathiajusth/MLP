module DataVectors

import DataIndexes
%access public export

data Vect: Type -> Nat -> Type where
  Nil: Vect t 0
  (::): t -> Vect t m -> Vect t (S m)

interface Indexable (F: Type -> Nat -> Type) where
  index: Index m -> F a m -> a

Indexable Vect where
  index F (x::xs) = x
  index (N i) (x::xs) = index i xs

map: (a -> b) -> Vect a m -> Vect b m
map _ Nil = Nil
map f (x :: xs) = f x :: map f xs

x: Vect Nat 2
x = [1,2]

switch: (Type -> Nat -> Type) -> Nat -> Type -> Type
switch f x y = f y x
y: (switch Vect) 2 Nat
y = [1,2]

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
