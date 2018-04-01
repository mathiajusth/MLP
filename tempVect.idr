import DataVectors
import DataIndexes
import Product

%access public export
data Mat: (dim: Nat) -> (signature: Vect dim Nat) -> Type

data Mat2D: Vect 2 Nat -> Type -> Type where
  Nil: Mat2D [_,0] _
  (::): Vect m t -> Mat2D [m,n] t -> Mat2D [m,(S n)] t

vectorify: (xs: List a) -> Vect (size xs) a
vectorify Nil = Nil
vectorify (x::xs) = x :: vectorify xs

listify: (xs: Vect m a) -> List a
listify Nil = Nil
listify (x::xs) = x :: listify xs

v: Vect 3 Nat
u: Vect 3 Nat
v = [1,2,3]
u = [2,3,4]
A: Mat2D [3,2] Nat
A = [u,v]

data So: Bool -> Type where
  Oh: So True

data Interval: Type where
  MkInterval: (lower: Int) -> (upper: Int) -> So (lower < upper) -> Interval

interval: Interval
interval = MkInterval 1 2 Oh

-- I want to apply data construuctor to a list
--  i.e. from Index: Nat -> Type
--       into (List Index): List Nat -> List Type
-- SOLUTION: it's the application of Functor interface i.e. 'map'

-- I want a type T: Vect m Type -> Type
--  s.t. e.g. x: (T [t1,t2,t3]) iff x: (t1,t2,t3)
--------------
qmap: (a -> Type) -> List a -> Type
qmap f (x::Nil) =  f x
qmap f (x::xs) = (f x, qmap f xs)

swap: (a -> b -> c) -> (b -> a -> c)
swap f x y = f y x

interface Pathable (F: List Nat -> Type -> Type) where
  walk: F is a -> Product (map Index is) -> a

{- Pathable Mat2D where -}
{-   walk _ [ -}
{-   path [F,F]  -}
{-   index F (x::xs) = x -}
{-   index (N i) (x::xs) = index i xs -}
