
theorem Ex005(a b : Prop): (a ∧ (a → ¬a)) → (a ∧ ¬a) :=
assume H:(a ∧ (a → ¬a)),
  have A:a, from and.elim_left H,
  have B:(a → ¬a), from and.elim_right H,
  have C:¬a,from B A,
  show a ∧ ¬a, from and.intro A C


