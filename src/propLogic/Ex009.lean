open classical

theorem Ex009(a b c: Prop): ¬c → a ∨ ((a ∨ c) → b):= 
assume H1:¬c ,
  have A:¬(a ∨ ((a ∨ c) → b)) → false, from 
  (
    assume H2:¬(a ∨ ((a ∨ c) → b)),
    have B:(a ∨ c) → b, from 
    (
      assume H3:a ∨ c,
      show b , from or.elim H3 
      (
        assume H4:a,
        have D:a ∨ ((a ∨ c) → b), from or.inl H4,
        have false, from H2 D,
        show b,from false.elim this
      )
      (
        assume H5:c,
        have E:false, from H1 H5,
        show b,from false.elim E
      )
    ),
    have  a ∨ ((a ∨ c) → b), from or.inr B,
    show false, from H2 this
  ),
  have F:¬¬(a ∨ ((a ∨ c) → b)), from not.intro A,
  by_contradiction
  (
    assume H6:¬(a ∨ ((a ∨ c) → b)),
    show false, from F H6
  )
