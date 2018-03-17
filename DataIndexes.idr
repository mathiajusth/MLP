module DataIndexes

%access public export

data Index: Nat -> Type where
  F: Index (S m)            --F as in First
  N: Index m -> Index (S m) --N as in Next
