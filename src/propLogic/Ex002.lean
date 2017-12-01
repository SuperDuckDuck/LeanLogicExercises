
--Proof: a -> b -> a


theorem Ex002(a b : Prop) : a -> b -> a :=
assume H1 : a,
assume H2 : b,
show a, from H1
