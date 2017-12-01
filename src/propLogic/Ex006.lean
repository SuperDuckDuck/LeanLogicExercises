
theorem Ex006(a b c : Prop): a ∨ b → a ∨ c → a ∨ (b ∧ c) :=
assume H1:a ∨ b,
  assume H2:a ∨ c,
  show a ∨ (b ∧ c), from or.elim H1 
    ( 
      assume H :a,
      show a ∨ (b ∧ c), from or.inl H
    )
    (
      assume H: b,
      show a ∨ (b ∧ c), from or.elim H2 
        (
          assume HH:a,
          show a ∨ (b ∧ c), from or.inl HH
        )
        (
          assume HH:c,
          have H3:b ∧ c, from and.intro H HH,
          show a ∨ (b ∧ c), from or.inr H3
        )
    ) 
