
theorem Ex014(a b: Prop): a ∧ b ↔ b ∧ a := 
show  a ∧ b ↔ b ∧ a , from iff.intro
  (
    assume H1:a ∧ b,
    have A:a,from and.elim_left H1,
    have B:b,from and.elim_right H1,
    show b ∧ a, from and.intro B A
  )
  (
    assume H1 : b ∧ a,
    have A:b,from and.elim_left H1,
    have B:a,from and.elim_right H1,
    show a ∧ b, from and.intro B A
  )
