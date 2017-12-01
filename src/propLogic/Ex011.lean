
theorem Ex011(a b : Prop): (a ∧ ¬a) → b := 
  assume H1:(a ∧ ¬a),
  have A:a, from and.elim_left H1,
  have B:¬a, from and.elim_right H1,
  have C:false, from B A,
  show b, from false.elim C 
