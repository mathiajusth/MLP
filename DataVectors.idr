module DataVectors

public export 
data Vect: Type -> Nat -> Type where
  Nil: Vect t 0
  (::): t -> Vect t m -> Vect t (S m)
