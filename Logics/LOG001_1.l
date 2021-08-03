%------------------------------------------------------------------------------
% File     : LOG001_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Name     : Common elements for modal logics
% Version  : Especial.
% English  : This provides the common axioms and inference rules of modal
%            logics in THF.

% Refs     : 
% Source   : 
% Names    : 

% Syntax   : Number of formulae    :   14 (   6 unit)

% Comments : 
%------------------------------------------------------------------------------
tff(box_type,type,'[.]' : $o > $o ).

tff(dia_type,type,'<.>' : $o > $o ).

tff(diamond,axiom,
    ! [P: $o] :
      ( <.>(P)
    <=> ~ [.](~ P) ) ).

tff(modal_necessitation,definition,
    ( $modal_necessitation
  <=> ! [P: $o] :
        ( [P]
      --> [[.](P)] ) ) ).

tff(modal_distribution,definition,
    ( $modal_distribution
  <=> ! [A: $o,B: $o] :
        ( [.](A => B)
       => ( [.](A)
         => [.](B) ) ) ) ).

tff(modal_axiom_D,definition,
    ( $modal_axiom_D
  <=> ! [A: $o] :
        ( [.](A)
       => <.>(A) ) ) ).

tff(modal_axiom_M,definition,
    ( $modal_axiom_M
  <=> ! [A: $o] :
        ( [.](A)
       => A ) ) ).

tff(modal_axiom_4,definition,
    ( $modal_axiom_4
  <=> ! [A: $o] :
        ( [.](A)
       => [.]([.](A)) ) ) ).  %----Can I omit the inner ()s?

tff(modal_axiom_B,definition,
    ( $modal_axiom_B
  <=> ! [A: $o] :
        ( A
       => [.](<.>(A)) ) ) ).

tff(modal_axiom_5,definition,
    ( $modal_axiom_5 
  <=> ! [A: $o] :
        ( <.>(A)
       => [.](<.>(A)) ) ) ).

tff(modal_axiom_CD,definition,
    ( $modal_axiom_CD
  <=> ! [A: $o] :
        ( <.>(A)
       => [.](A) ) ) ).

tff(modal_axiom_boxM,definition,
    ( $modal_axiom_boxM
  <=> ! [A: $o] : 
        [.]
          ( [.](A) 
         => A ) ) ).

tff(modal_axiom_C4,definition,
    ( $modal_axiom_C4
  <=> ! [A: $o] :
        ( [.]([.](A))
       => [.](A) ) ) ).

tff(modal_axiom_C,definition,
    ( $modal_axiom_C
  <=> ! [A: $o] :
        ( <.>([.](A))
       => [.](<.>(A)) ) ) ).
      
%------------------------------------------------------------------------------
