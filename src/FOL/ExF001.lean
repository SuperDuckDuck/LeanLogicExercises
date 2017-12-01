
theorem ExF001{X : Type}(P Q : X → Prop)(a : X): P a → Q a → ∃x, P x ∧ Q x :=

assume H1:P a,
  assume H2:Q a,
  have A:P a ∧ Q a, from and.intro H1 H2,
  show ∃x, P x ∧ Q x, from exists.intro a A


