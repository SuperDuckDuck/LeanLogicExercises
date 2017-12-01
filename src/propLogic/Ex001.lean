
--Proof: a -> a


theorem Ex001_1(a : Prop) : a -> a := 
assume H1 : a,
show a ,from H1
 

--using tactics
theorem Ex001_2(a : Prop) : a -> a := 
begin
  intro H,
  exact H 
end


