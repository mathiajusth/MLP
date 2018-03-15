module DataMatrices

import DataVectors

public export
data Mat: Type -> Nat -> Nat -> Type where
  Nil: Mat _ _ 0
  (::): Vect t m -> Mat t m n -> Mat t m (S n)
