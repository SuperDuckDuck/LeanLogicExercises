# LogicExercisesInCoq

- scroll down for exercises in FOL (first order logic)  

## Propositional Logic

Proof the following theorems

**Exercise 1: a -> a**
```lean
theorem Ex001_1(a : Prop) : a -> a := 
assume H1 : a,
show a ,from H1
```

**Exercise 2: a -> b -> a**

```lean
theorem Ex002(a b : Prop) : a -> b -> a :=
assume H1 : a,
assume H2 : b,
show a, from H1
```


**Exercise 3: ¬a → a → b**

```lean
theorem Ex003_1 (a b: Prop) : ¬a → a → b :=
assume A:¬a,
  assume B:a,
  have C:false, from  A B,
  show b, from false.elim C
```

**Exercise 4: (a → (b ∧ c)) → (a → b)**
```lean
theorem Ex004(a b c : Prop):(a → (b ∧ c)) → (a → b) :=
assume H1:(a → (b ∧ c)),
  assume H2:a,
  have A:b ∧ c, from H1 H2,
  show b, from and.elim_left A
```

**Exercise 5: (a ∧ (a → ¬a)) → (a ∧ ¬a) **
```lean
theorem Ex005(a b : Prop): (a ∧ (a → ¬a)) → (a ∧ ¬a) :=
assume H:(a ∧ (a → ¬a)),
  have A:a, from and.elim_left H,
  have B:(a → ¬a), from and.elim_right H,
  have C:¬a,from B A,
  show a ∧ ¬a, from and.intro A C
```

**Exercise 6: a ∨ b → a ∨ c → a ∨ (b ∧ c)**

```lean
theorem Ex006(a b c : Prop): a ∨ b → a ∨ c → a ∨ (b ∧ c) :=
assume H1:a ∨ b,
  assume H2:a ∨ c,
  show a ∨ (b ∧ c), from or.elim H1 
    ( 
      assume H :a,
      show a ∨ (b ∧ c), from or.inl H
    )
    (
      assume H: b,
      show a ∨ (b ∧ c), from or.elim H2 
        (
          assume HH:a,
          show a ∨ (b ∧ c), from or.inl HH
        )
        (
          assume HH:c,
          have H3:b ∧ c, from and.intro H HH,
          show a ∨ (b ∧ c), from or.inr H3
        )
    ) 
```

**Exercise 7: (( a → b) → a) → a**
```lean
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
```

**Exercise 8: **
```
```

**Exercise 9: **
```
```

**Exercise 10: **
```
```

**Exercise 11: **
```
```

**Exercise 12: **
```
```

**Exercise 13:**
```
```

**Exercise 14: **
```
```

**Exercise 15: **
```lean
```
## First Order Logic

**Exercise 1:**

```
```

**Exercise 2:**
```
```

**Exercise 3: **
```
```