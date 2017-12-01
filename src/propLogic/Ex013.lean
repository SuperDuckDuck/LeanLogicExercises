

theorem Ex013(a b : Prop): (a → b) → (¬b → ¬a) := 
  assume H1:a → b,
    assume H2:¬b,
    show ¬a, from not.intro
    (
      assume H3:a,
      have b,from H1 H3,
      show false, from H2 this
    )
    
