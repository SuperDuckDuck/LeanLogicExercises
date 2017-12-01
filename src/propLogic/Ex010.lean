
theorem Ex010(a : Prop): a ∨ ¬false := 
have A:false → false,from 
( 
  assume H1:false,
  show false, from H1
),
have ¬false, from not.intro A,
show a ∨ ¬false, from or.inr this

