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

tff(diamond,definition,(
    ! [P: $o] :
      ( <.>(P)
    <=> ~ [.](~ P) ) )).

tff(modal_necessitation,definition,(
    ( $modal_necessitation
  <=> ! [P: $o] :
        ( [P]
      --> [[.](P)] ) ) )).

tff(modal_distribution,definition,(
    ( $modal_distribution
  <=> ! [A: $o,B: $o] :
        ( [.](A => B)
       => ( [.](A)
         => [.](B) ) ) ) )).

tff(modal_D,definition,(
    ! [A: $o] :
      ( [.](A)
     => <.>(A) ) )).

tff(modal_M,definition,(
    ! [A: $o] :
      ( [.](A)
     => A ) )).

tff(modal_4,definition,(
    ! [A: $o] :
      ( [.](A)
     => [.]([.](A)) ) )).  %----Can I omit the inner ()s?

tff(modal_B,definition,(
    ! [A: $o] :
      ( A
     => [.](<.>(A)) ) )).

tff(modal_5,definition,(
    ! [A: $o] :
      ( <.>(A)
     => [.](<.>(A)) ) )).

tff(modal_CD,definition,(
    ! [A: $o] :
      ( <.>(A)
     => [.](A) ) )).

tff(modal_boxM,definition,(
    ! [A: $o] : 
      [.]
        ( [.](A) 
       => A ) )).

tff(modal_C4,definition,(
    ! [A: $o] :
      ( [.]([.](A))
     => [.](A) ) )).

tff(modal_C,definition,(
    ! [A: $o] :
      ( <.>([.](A))
     => [.](<.>(A)) ) )).
      
%------------------------------------------------------------------------------
