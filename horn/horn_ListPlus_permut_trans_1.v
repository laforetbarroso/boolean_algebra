(* This file is generated by Why3's Coq driver *)
(* Beware! Only edit allowed sections below    *)
Require Import BuiltIn.
Require BuiltIn.
Require HighOrd.
Require int.Int.
Require list.List.
Require list.Length.
Require list.Mem.
Require set.Fset.
Require option.Option.
Require list.Append.
Require list.Reverse.
Require list.NumOcc.
Require list.Permut.

Axiom i : Type.
Parameter i_WhyType : WhyType i.
Existing Instance i_WhyType.

Axiom b : Type.
Parameter b_WhyType : WhyType b.
Existing Instance b_WhyType.

Parameter top: b.

Parameter bot: b.

Parameter infix_slasbs: b -> b -> b.

Parameter infix_bsassl: b -> b -> b.

Parameter neg: b -> b.

(* Why3 assumption *)
Definition xor (x:b) (y:b) : b :=
  infix_slasbs (infix_bsassl x y) (neg (infix_slasbs x y)).

Axiom Assoc :
  forall (x:b) (y:b) (z:b), ((xor (xor x y) z) = (xor x (xor y z))).

Axiom Unit_def_l : forall (x:b), ((xor bot x) = x).

Axiom Unit_def_r : forall (x:b), ((xor x bot) = x).

Axiom Inv_def_l : forall (x:b), ((xor x x) = bot).

Axiom Inv_def_r : forall (x:b), ((xor x x) = bot).

Axiom Comm : forall (x:b) (y:b), ((xor x y) = (xor y x)).

Axiom Assoc1 :
  forall (x:b) (y:b) (z:b),
  ((infix_slasbs (infix_slasbs x y) z) = (infix_slasbs x (infix_slasbs y z))).

Axiom Mul_distr_l :
  forall (x:b) (y:b) (z:b),
  ((infix_slasbs x (xor y z)) = (xor (infix_slasbs x y) (infix_slasbs x z))).

Axiom Mul_distr_r :
  forall (x:b) (y:b) (z:b),
  ((infix_slasbs (xor y z) x) = (xor (infix_slasbs y x) (infix_slasbs z x))).

Axiom Comm1 : forall (x:b) (y:b), ((infix_slasbs x y) = (infix_slasbs y x)).

Axiom Unit_def_l1 : forall (x:b), ((infix_slasbs top x) = x).

Axiom Unit_def_r1 : forall (x:b), ((infix_slasbs x top) = x).

Axiom NonTrivialRing : ~ (bot = top).

Axiom Idempotence : forall (x:b), ((infix_slasbs x x) = x).

Axiom br_equivalent_law_1 : forall (a:b), ((xor a a) = bot).

(* Why3 assumption *)
Definition infix_lseq (x:b) (y:b) : Prop := ((infix_bsassl x y) = y).

Axiom Refl : forall (x:b), infix_lseq x x.

Axiom Trans :
  forall (x:b) (y:b) (z:b), infix_lseq x y -> infix_lseq y z ->
  infix_lseq x z.

Axiom Antisymm :
  forall (x:b) (y:b), infix_lseq x y -> infix_lseq y x -> (x = y).

Axiom glb_infimum :
  forall (x:b) (y:b),
  infix_lseq (infix_slasbs x y) x /\
  infix_lseq (infix_slasbs x y) y /\
  (forall (w:b), infix_lseq w x /\ infix_lseq w y ->
   infix_lseq w (infix_slasbs x y)).

Axiom lub_supremum :
  forall (x:b) (y:b),
  infix_lseq x (infix_bsassl x y) /\
  infix_lseq y (infix_bsassl x y) /\
  (forall (w:b), infix_lseq x w /\ infix_lseq y w ->
   infix_lseq (infix_bsassl x y) w).

Axiom comm_meet :
  forall (x:b) (y:b), ((infix_bsassl x y) = (infix_bsassl y x)).

Axiom comm_join :
  forall (x:b) (y:b), ((infix_slasbs x y) = (infix_slasbs y x)).

Axiom assoc_meet :
  forall (x:b) (y:b) (z:b),
  ((infix_slasbs x (infix_slasbs y z)) = (infix_slasbs (infix_slasbs x y) z)).

Axiom assoc_join :
  forall (x:b) (y:b) (z:b),
  ((infix_bsassl x (infix_bsassl y z)) = (infix_bsassl (infix_bsassl x y) z)).

Axiom absorp_meet :
  forall (x:b) (y:b), ((infix_slasbs x (infix_bsassl x y)) = x).

Axiom absorp_join :
  forall (x:b) (y:b), ((infix_bsassl x (infix_slasbs x y)) = x).

Axiom idem_meet : forall (x:b), ((infix_slasbs x x) = x).

Axiom idem_join : forall (x:b), ((infix_bsassl x x) = x).

Axiom order :
  forall (x:b) (y:b), ((infix_bsassl x y) = x) -> ((infix_slasbs x y) = y).

Axiom dl_dist_one :
  forall (a:b) (b1:b) (c:b),
  ((infix_bsassl a (infix_slasbs b1 c)) =
   (infix_slasbs (infix_bsassl a b1) (infix_bsassl a c))).

Axiom dl_dist_two :
  forall (a:b) (b1:b) (c:b),
  ((infix_slasbs a (infix_bsassl b1 c)) =
   (infix_bsassl (infix_slasbs a b1) (infix_slasbs a c))).

Axiom dist_meet :
  forall (x:b) (y:b) (z:b),
  ((infix_slasbs x (infix_bsassl y z)) =
   (infix_bsassl (infix_slasbs x y) (infix_slasbs x z))).

Axiom dist_join :
  forall (x:b) (y:b) (z:b),
  ((infix_bsassl x (infix_slasbs y z)) =
   (infix_slasbs (infix_bsassl x y) (infix_bsassl x z))).

Axiom Refl1 : forall (x:b), infix_lseq x x.

Axiom Trans1 :
  forall (x:b) (y:b) (z:b), infix_lseq x y -> infix_lseq y z ->
  infix_lseq x z.

Axiom Antisymm1 :
  forall (x:b) (y:b), infix_lseq x y -> infix_lseq y x -> (x = y).

Axiom glb_infimum1 :
  forall (x:b) (y:b),
  infix_lseq (infix_slasbs x y) x /\
  infix_lseq (infix_slasbs x y) y /\
  (forall (w:b), infix_lseq w x /\ infix_lseq w y ->
   infix_lseq w (infix_slasbs x y)).

Axiom lub_supremum1 :
  forall (x:b) (y:b),
  infix_lseq x (infix_bsassl x y) /\
  infix_lseq y (infix_bsassl x y) /\
  (forall (w:b), infix_lseq x w /\ infix_lseq y w ->
   infix_lseq (infix_bsassl x y) w).

Axiom comm_meet1 :
  forall (x:b) (y:b), ((infix_bsassl x y) = (infix_bsassl y x)).

Axiom comm_join1 :
  forall (x:b) (y:b), ((infix_slasbs x y) = (infix_slasbs y x)).

Axiom assoc_meet1 :
  forall (x:b) (y:b) (z:b),
  ((infix_slasbs x (infix_slasbs y z)) = (infix_slasbs (infix_slasbs x y) z)).

Axiom assoc_join1 :
  forall (x:b) (y:b) (z:b),
  ((infix_bsassl x (infix_bsassl y z)) = (infix_bsassl (infix_bsassl x y) z)).

Axiom absorp_meet1 :
  forall (x:b) (y:b), ((infix_slasbs x (infix_bsassl x y)) = x).

Axiom absorp_join1 :
  forall (x:b) (y:b), ((infix_bsassl x (infix_slasbs x y)) = x).

Axiom idem_meet1 : forall (x:b), ((infix_slasbs x x) = x).

Axiom idem_join1 : forall (x:b), ((infix_bsassl x x) = x).

Axiom order1 :
  forall (x:b) (y:b), ((infix_bsassl x y) = x) -> ((infix_slasbs x y) = y).

Axiom lowerBoundZero : forall (x:b), infix_lseq bot x.

Axiom upperBoundOne : forall (x:b), infix_lseq x top.

Axiom ident_meet : forall (x:b), ((infix_slasbs x top) = x).

Axiom ident_join : forall (x:b), ((infix_bsassl x bot) = x).

Axiom bound_glb : forall (x:b), ((infix_slasbs x bot) = bot).

Axiom bound_lub : forall (x:b), ((infix_bsassl x top) = top).

Axiom cl_compl_top : forall (a:b), exists x:b, ((infix_bsassl a x) = top).

Axiom cl_compl_bot : forall (a:b), exists x:b, ((infix_slasbs a x) = bot).

Axiom lattice_ring :
  forall (x:b) (y:b),
  (infix_lseq x y <-> ((infix_slasbs x y) = x)) /\
  (((infix_slasbs x y) = x) <-> ((infix_bsassl x y) = y)).

Axiom comm_and :
  forall (x:b) (y:b), ((infix_slasbs x y) = (infix_slasbs y x)).

Axiom comm_or :
  forall (x:b) (y:b), ((infix_bsassl x y) = (infix_bsassl y x)).

Axiom dist_and :
  forall (x:b) (y:b) (z:b),
  ((infix_slasbs x (infix_bsassl y z)) =
   (infix_bsassl (infix_slasbs x y) (infix_slasbs x z))).

Axiom dist_or :
  forall (x:b) (y:b) (z:b),
  ((infix_bsassl x (infix_slasbs y z)) =
   (infix_slasbs (infix_bsassl x y) (infix_bsassl x z))).

Axiom ident_and : forall (x:b), ((infix_slasbs x top) = x).

Axiom ident_or : forall (x:b), ((infix_bsassl x bot) = x).

Axiom uniq_compl :
  forall (x:b) (y:b) (z:b), ((neg x) = y) /\ ((neg x) = z) -> (y = z).

Axiom compl_and : forall (x:b), ((infix_slasbs x (neg x)) = bot).

Axiom compl_or : forall (x:b), ((infix_bsassl x (neg x)) = top).

Axiom idem_and : forall (x:b), ((infix_slasbs x x) = x).

Axiom idem_or : forall (x:b), ((infix_bsassl x x) = x).

Axiom boundbot : forall (x:b), infix_lseq bot x.

Axiom boundtop : forall (x:b), infix_lseq x top.

Axiom bound_and : forall (x:b), ((infix_slasbs x bot) = bot).

Axiom bound_or : forall (x:b), ((infix_bsassl x top) = top).

Axiom absorp_and :
  forall (x:b) (y:b), ((infix_slasbs x (infix_bsassl x y)) = x).

Axiom absorp_or :
  forall (x:b) (y:b), ((infix_bsassl x (infix_slasbs x y)) = x).

Axiom assoc_and :
  forall (x:b) (y:b) (z:b),
  ((infix_slasbs x (infix_slasbs y z)) = (infix_slasbs (infix_slasbs x y) z)).

Axiom assoc_or :
  forall (x:b) (y:b) (z:b),
  ((infix_bsassl x (infix_bsassl y z)) = (infix_bsassl (infix_bsassl x y) z)).

Axiom demorgan_and :
  forall (x:b) (y:b),
  ((neg (infix_slasbs x y)) = (infix_bsassl (neg x) (neg y))).

Axiom demorgan_or :
  forall (x:b) (y:b),
  ((neg (infix_bsassl x y)) = (infix_slasbs (neg x) (neg y))).

Axiom negtop : ((neg top) = bot).

Axiom negbot : ((neg bot) = top).

Axiom double_neg : forall (x:b), ((neg (neg x)) = x).

Axiom dist_ord :
  forall (x:b) (y:b) (z:b), infix_lseq x z ->
  ((infix_bsassl x (infix_slasbs y z)) = (infix_slasbs (infix_bsassl x y) z)).

(* Why3 assumption *)
Definition infix_mngtas (x:b) (y:b) : b := infix_bsassl (neg x) y.

(* Why3 assumption *)
Definition usequiv (x:b) (y:b) : b :=
  infix_slasbs (infix_mngtas x y) (infix_mngtas y x).

Axiom disj_and :
  forall (x:b) (y:b),
  (x = (infix_slasbs x y)) /\ ((infix_slasbs x y) = top) -> (x = top).

Axiom disj_or : forall (x:b) (y:b), (x = top) -> ((infix_bsassl x y) = top).

Axiom modus_ponens :
  forall (x:b) (y:b), ((infix_slasbs x (infix_mngtas x y)) = top) ->
  (y = top).

Axiom modus_tollens :
  forall (x:b) (y:b), ((infix_slasbs (infix_mngtas x y) (neg y)) = top) ->
  ((neg x) = top).

Axiom implic :
  forall (x:b) (y:b), ((infix_mngtas x y) = (infix_bsassl (neg x) y)).

Axiom absur :
  forall (x:b) (y:b),
  ((infix_slasbs (infix_mngtas x y) (infix_mngtas x (neg y))) = (neg x)).

Axiom disj_syl :
  forall (x:b) (y:b), ((infix_slasbs (infix_bsassl x y) (neg x)) = top) ->
  (y = top).

Axiom impl_chain :
  forall (x:b) (y:b) (z:b),
  ((infix_slasbs (infix_mngtas x y) (infix_mngtas y z)) = top) ->
  ((infix_mngtas x z) = top).

Axiom impl_comb :
  forall (x:b) (y:b) (z:b) (w:b),
  ((infix_slasbs (infix_mngtas x y) (infix_mngtas z w)) = top) ->
  ((infix_mngtas (infix_slasbs x z) (infix_slasbs y w)) = top).

Axiom currying :
  forall (x:b) (y:b) (z:b),
  ((infix_mngtas (infix_slasbs x y) z) = (infix_mngtas x (infix_mngtas y z))).

Axiom contrapos :
  forall (x:b) (y:b), ((infix_mngtas x y) = (infix_mngtas (neg y) (neg x))).

Axiom binary : forall (x:b), (x = top) \/ (x = bot).

Axiom ifnottop_thenbot : forall (t:b), ~ (t = top) -> (t = bot).

Axiom ifnotbot_thentop : forall (t:b), ~ (t = bot) -> (t = top).

(* Why3 assumption *)
Inductive atomicformula :=
  | ATop : atomicformula
  | ABot : atomicformula
  | AVar : i -> atomicformula.
Axiom atomicformula_WhyType : WhyType atomicformula.
Existing Instance atomicformula_WhyType.

(* Why3 assumption *)
Definition eval_atomicformula (phi:atomicformula) (f:i -> b) : b :=
  match phi with
  | ATop => top
  | ABot => bot
  | AVar i1 => f i1
  end.

(* Why3 assumption *)
Inductive pliteral :=
  | LBottom : pliteral
  | LVar : i -> pliteral.
Axiom pliteral_WhyType : WhyType pliteral.
Existing Instance pliteral_WhyType.

(* Why3 assumption *)
Inductive formula_wi :=
  | L_wi : pliteral -> formula_wi
  | FAnd_wi : formula_wi -> formula_wi -> formula_wi
  | FOr_wi : formula_wi -> formula_wi -> formula_wi
  | FNeg_wi : formula_wi -> formula_wi.
Axiom formula_wi_WhyType : WhyType formula_wi.
Existing Instance formula_wi_WhyType.

(* Why3 assumption *)
Inductive formula_nnf :=
  | L_nnf : pliteral -> formula_nnf
  | FNeg_nnf : pliteral -> formula_nnf
  | FAnd_nnf : formula_nnf -> formula_nnf -> formula_nnf
  | FOr_nnf : formula_nnf -> formula_nnf -> formula_nnf.
Axiom formula_nnf_WhyType : WhyType formula_nnf.
Existing Instance formula_nnf_WhyType.

(* Why3 assumption *)
Inductive clause_cnf :=
  | CLiteral : pliteral -> clause_cnf
  | CNeg_cnf : pliteral -> clause_cnf
  | COr_cnf : clause_cnf -> clause_cnf -> clause_cnf.
Axiom clause_cnf_WhyType : WhyType clause_cnf.
Existing Instance clause_cnf_WhyType.

(* Why3 assumption *)
Inductive formula_cnf :=
  | FClause_cnf : clause_cnf -> formula_cnf
  | FAnd_cnf : formula_cnf -> formula_cnf -> formula_cnf.
Axiom formula_cnf_WhyType : WhyType formula_cnf.
Existing Instance formula_cnf_WhyType.

(* Why3 assumption *)
Definition eval_pliteral (l:pliteral) (f:i -> b) : b :=
  match l with
  | LBottom => bot
  | LVar i1 => f i1
  end.

(* Why3 assumption *)
Fixpoint eval_wi (fwi:formula_wi) (f:i -> b) {struct fwi}: b :=
  match fwi with
  | L_wi phi1 => eval_pliteral phi1 f
  | FAnd_wi fwi1 fwi2 => infix_slasbs (eval_wi fwi1 f) (eval_wi fwi2 f)
  | FOr_wi fwi1 fwi2 => infix_bsassl (eval_wi fwi1 f) (eval_wi fwi2 f)
  | FNeg_wi fwi1 => neg (eval_wi fwi1 f)
  end.

(* Why3 assumption *)
Fixpoint eval_nnf (fnnf:formula_nnf) (f:i -> b) {struct fnnf}: b :=
  match fnnf with
  | FNeg_nnf literal => neg (eval_pliteral literal f)
  | L_nnf literal => eval_pliteral literal f
  | FAnd_nnf fnnf1 fnnf2 =>
      infix_slasbs (eval_nnf fnnf1 f) (eval_nnf fnnf2 f)
  | FOr_nnf fnnf1 fnnf2 => infix_bsassl (eval_nnf fnnf1 f) (eval_nnf fnnf2 f)
  end.

(* Why3 assumption *)
Fixpoint eval_clause_cnf (fcnf:clause_cnf) (f:i -> b) {struct fcnf}: b :=
  match fcnf with
  | CLiteral l => eval_pliteral l f
  | CNeg_cnf l => neg (eval_pliteral l f)
  | COr_cnf phi1 phi2 =>
      infix_bsassl (eval_clause_cnf phi1 f) (eval_clause_cnf phi2 f)
  end.

(* Why3 assumption *)
Fixpoint eval_formula_cnf (e:formula_cnf) (f:i -> b) {struct e}: b :=
  match e with
  | FClause_cnf phi1 => eval_clause_cnf phi1 f
  | FAnd_cnf phi1 phi2 =>
      infix_slasbs (eval_formula_cnf phi1 f) (eval_formula_cnf phi2 f)
  end.

(* Why3 assumption *)
Inductive rightside :=
  | RProp : b -> rightside
  | RVar : i -> rightside.
Axiom rightside_WhyType : WhyType rightside.
Existing Instance rightside_WhyType.

(* Why3 assumption *)
Inductive conj_pliteral :=
  | CPL : pliteral -> conj_pliteral
  | CPAnd : conj_pliteral -> conj_pliteral -> conj_pliteral.
Axiom conj_pliteral_WhyType : WhyType conj_pliteral.
Existing Instance conj_pliteral_WhyType.

(* Why3 assumption *)
Inductive leftside :=
  | LTop : leftside
  | LPos : conj_pliteral -> leftside.
Axiom leftside_WhyType : WhyType leftside.
Existing Instance leftside_WhyType.

(* Why3 assumption *)
Inductive basichornclause :=
  | BImpl : leftside -> rightside -> basichornclause.
Axiom basichornclause_WhyType : WhyType basichornclause.
Existing Instance basichornclause_WhyType.

(* Why3 assumption *)
Inductive hornclause :=
  | HBasic : basichornclause -> hornclause
  | HAnd : hornclause -> hornclause -> hornclause.
Axiom hornclause_WhyType : WhyType hornclause.
Existing Instance hornclause_WhyType.

(* Why3 assumption *)
Definition assign_rightside (r:rightside) (f:i -> b) : rightside :=
  match r with
  | RProp b1 => RProp b1
  | RVar i1 => RProp (f i1)
  end.

(* Why3 assumption *)
Definition eval_rightside (r:rightside) : b :=
  match r with
  | RProp b1 => b1
  | _ => bot
  end.

(* Why3 assumption *)
Fixpoint eval_positive (plc:conj_pliteral) (f:i -> b) {struct plc}: b :=
  match plc with
  | CPL l => eval_pliteral l f
  | CPAnd phi1 phi2 =>
      infix_slasbs (eval_positive phi1 f) (eval_positive phi2 f)
  end.

(* Why3 assumption *)
Definition eval_leftside (l:leftside) (f:i -> b) : b :=
  match l with
  | LTop => top
  | LPos phi1 => eval_positive phi1 f
  end.

(* Why3 assumption *)
Definition eval_basichornclause (b1:basichornclause) (f:i -> b) : b :=
  match b1 with
  | BImpl left1 right1 =>
      infix_mngtas (eval_leftside left1 f)
      (eval_rightside (assign_rightside right1 f))
  end.

(* Why3 assumption *)
Fixpoint eval_hornclause (h:hornclause) (f:i -> b) {struct h}: b :=
  match h with
  | HBasic h1 => eval_basichornclause h1 f
  | HAnd h1 h2 => infix_slasbs (eval_hornclause h1 f) (eval_hornclause h2 f)
  end.

(* Why3 assumption *)
Definition eval_optionrightside (p:Init.Datatypes.option rightside)
    (f:i -> b) : b :=
  match p with
  | Init.Datatypes.None => bot
  | Init.Datatypes.Some x => eval_rightside (assign_rightside x f)
  end.

(* Why3 assumption *)
Fixpoint sublist {a:Type} {a_WT:WhyType a} (list1:Init.Datatypes.list a)
  (list2:Init.Datatypes.list a) {struct list1}: Prop :=
  match list1 with
  | Init.Datatypes.nil => True
  | Init.Datatypes.cons x l => list.Mem.mem x list2 /\ sublist l list2
  end.

Axiom sublist'spec :
  forall {a:Type} {a_WT:WhyType a},
  forall (list1:Init.Datatypes.list a) (list2:Init.Datatypes.list a),
  sublist list1 list2 <->
  (forall (elem:a), list.Mem.mem elem list1 -> list.Mem.mem elem list2).

Parameter is_equal_list:
  forall {a:Type} {a_WT:WhyType a}, Init.Datatypes.list a ->
  Init.Datatypes.list a -> Prop.

Axiom is_equal_list'def :
  forall {a:Type} {a_WT:WhyType a},
  forall (list1:Init.Datatypes.list a) (list2:Init.Datatypes.list a),
  match (list1, list2) with
  | (Init.Datatypes.nil, Init.Datatypes.nil) => is_equal_list list1 list2
  | (Init.Datatypes.cons _ _, Init.Datatypes.nil)|(Init.Datatypes.nil,
                                                   Init.Datatypes.cons _ _) =>
      ~ is_equal_list list1 list2
  | (Init.Datatypes.cons x1 list1', Init.Datatypes.cons x2 list2') =>
      is_equal_list list1 list2 <-> (x1 = x2) /\ is_equal_list list1' list2'
  end.

Axiom equality_is_equal_list :
  forall {a:Type} {a_WT:WhyType a},
  forall (l1:Init.Datatypes.list a) (l2:Init.Datatypes.list a),
  is_equal_list l1 l2 -> (l1 = l2).

Axiom is_equal_list_reflexive :
  forall {a:Type} {a_WT:WhyType a},
  forall (l1:Init.Datatypes.list a), is_equal_list l1 l1.

Axiom is_equal_list_commutative :
  forall {a:Type} {a_WT:WhyType a},
  forall (l1:Init.Datatypes.list a) (l2:Init.Datatypes.list a),
  is_equal_list l1 l2 <-> is_equal_list l2 l1.

Axiom tuple_equality :
  forall {a:Type} {a_WT:WhyType a},
  forall (z1:Init.Datatypes.list a) (z2:Init.Datatypes.list a)
    (r1:Init.Datatypes.list a) (r2:Init.Datatypes.list a),
  (is_equal_list (Init.Datatypes.app z1 z2) (Init.Datatypes.app r1 r2) ->
   is_equal_list z1 r1 -> is_equal_list z2 r2) /\
  (is_equal_list (Init.Datatypes.app z1 z2) (Init.Datatypes.app r1 r2) ->
   is_equal_list z2 r2 -> is_equal_list z1 r1).

Axiom permut_ref :
  forall {a:Type} {a_WT:WhyType a},
  forall (cl:Init.Datatypes.list a), list.Permut.permut cl cl.

(* Why3 goal *)
Theorem permut_trans {a:Type} {a_WT:WhyType a} :
  forall (cl1:Init.Datatypes.list a) (cl2:Init.Datatypes.list a)
    (cl3:Init.Datatypes.list a),
  list.Permut.permut cl1 cl2 /\ list.Permut.permut cl2 cl3 ->
  list.Permut.permut cl1 cl3.

auto.

