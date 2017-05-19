 
(*=example_type *)
Inductive example_type :=
| elem1
| elem2.
(*=End *)

(*=equal *)
Fixpoint equal (e1 e2 : example_type) : bool :=
  match e1 with
  | elem1 => match e2 with
             | elem1 => true
             | elem2 => false
             end
  | elem2 => match e2 with
             | elem1 => false
             | elem2 => false
             end
  end.
(*=End *)
Check elem1.
(*=SchemeEqual *)
Scheme Equality for example_type.
(*=End *)
Print example_type_beq.

(*=reflect *)
Inductive reflect (P : Prop) : bool -> Set :=
| ReflectT : P -> reflect P true
| ReflectF : ~ P -> reflect P false.
(*=End *)

Inductive operande :=
| register : nat -> operande
| immediate : nat -> operande.


