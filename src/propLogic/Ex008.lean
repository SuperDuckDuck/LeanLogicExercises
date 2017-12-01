open classical

theorem Ex008(a b : Prop): ¬(a ∧ b) → (¬a ∨ ¬b) :=
assume H1:¬(a ∧ b),
have tmp:¬¬(¬a ∨ ¬b),from not.intro 
  (
    assume H2:¬(¬a ∨ ¬b),
    have ¬a,from not.intro 
      (
        assume H3:a,
        have A:¬b,from not.intro 
          (
            assume H4:b,
            have tmp2:(a ∧ b), from and.intro H3 H4,
            show false, from H1 tmp2
          ),
        have B:¬a ∨ ¬b, from or.inr A,
        show false, from H2 B
      ),
    have ¬a ∨ ¬b, from  or.inl this,
    show false, from H2 this 
  ),
by_contradiction 
  (
    assume H5:¬(¬a ∨ ¬b),
    show false, from tmp H5
  )
