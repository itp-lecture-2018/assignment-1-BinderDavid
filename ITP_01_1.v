Inductive shape :=
| Square : nat -> shape
| Rectangle : nat -> nat -> shape.

Fixpoint isSquare (s : shape) : bool :=
  match s with
  | Square _ => true
  | Rectangle _ _ => false
  end.

Definition ex_square := Square 2.
Definition ex_rectangle := Rectangle 2 3.

Compute (isSquare ex_square).
Compute (isSquare ex_rectangle).

Lemma ex_square_is_square : isSquare ex_square = true.
Proof.
  simpl. reflexivity.
Qed.