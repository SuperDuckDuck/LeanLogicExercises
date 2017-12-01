
theorem ExF002{X : Type}{P Q : X → Prop}{a : X}: (∀x , (P x → Q x)) → P a → Q a :=
  assume H1: (∀x , (P x → Q x)),
    take (a:X),
    assume H2: P a,
    have A: P a → Q a, from H1 a,
    show Q a, from A H2
