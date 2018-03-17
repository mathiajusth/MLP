module DataMatrices

import DataVectors
import DataIndexes

%access public export

data Mat: Type -> Nat -> Nat -> Type where
  Nil: Mat _ _ 0
  (::): Vect t m -> Mat t m n -> Mat t m (S n)

mapdeep: (a -> b) -> Mat a m n -> Mat b m n
mapdeep _ Nil = Nil
mapdeep f (v :: A) = DataVectors.map f v :: mapdeep f A

map: (Vect a m -> b) -> Mat a m i -> Vect b i
map _ Nil = Nil
map f (v :: A) = f v :: map f A

column: Index n -> Mat t m n -> Vect t m
column F (v :: vs) = v
column (N i) (v :: vs) = column i vs

transpose: Mat t m n -> Mat t n m
