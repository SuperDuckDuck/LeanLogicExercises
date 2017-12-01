
theorem Ex012(a b : Prop): a → (a ∨ b) := 
  assume H1:a,
  show a ∨ b, from or.inl H1
