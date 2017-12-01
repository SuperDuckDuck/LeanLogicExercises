open classical

theorem Ex007(a b : Prop): (( a → b) → a) → a := 
assume H1:( a → b) → a,
  have A:¬¬a,from not.intro 
  (
    assume H2:¬a,
    have B:a, from H1 
      (
        assume H3:a,
        show b, from absurd H3 H2
      ),
    show false, from H2 B
  ),
  by_contradiction
  (
    assume C:¬a,
    show false, from A C
  )
