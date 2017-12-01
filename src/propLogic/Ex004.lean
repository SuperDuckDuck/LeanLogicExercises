

theorem Ex004(a b c : Prop):(a → (b ∧ c)) → (a → b) :=
assume H1:(a → (b ∧ c)),
  assume H2:a,
  have A:b ∧ c, from H1 H2,
  show b, from and.elim_left A



