
theorem Ex003_1 (a b: Prop) : ¬a → a → b :=
assume A:¬a,
  assume B:a,
  have C:false, from  A B,
  show b, from false.elim C


theorem Ex003_2 (a b : Prop) : ¬a → a → b := 
begin
  intro,
  intro,
  contradiction
end 




