module Product

import DataIndexes

%access public export
data Product: List Type -> Type where
  Nil: Product Nil
  (::): a -> (b: Product ts) -> Product (a :: ts)

{- x: Product Nil -}
{- x = Nil -}
{- y: Product [Nat, Char] -}
{- y = 1 :: 'a' :: Nil -}
{-  -}
{- f: Product (map Index [1,2]) -}
{- f = [F, N F] -}
