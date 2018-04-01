module DataIndexes

%access public export

data Index: Nat -> Type where
  F: Index (S m)            --F as in First
  N: Index m -> Index (S m) --N as in Next

drop: (m: Nat) -> Index m -> Nat
drop (S m) F = m
drop (S m) (N i)  = drop m i

take: (m: Nat) -> Index m -> Nat
take _ F = S Z
take _ (N i) = S (take _ i)
