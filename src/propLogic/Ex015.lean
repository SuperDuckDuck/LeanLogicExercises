
theorem Ex015 (a b : Prop):(a → b) → a → a ∧ b :=
  assume H : (a → b),
  assume H1 : a,
  have A : b , from H H1,
  show a ∧ b, from and.intro H1 A
