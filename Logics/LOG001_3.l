%------------------------------------------------------------------------------
% File     : LOG001_3 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Non-normal modal logics
% Name     : Common elements for non-normal modal logics
% Version  : Especial.
% English  : 

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : 
%------------------------------------------------------------------------------
tff(dual_diamond,definition,
    ( [.](A)
  <=> ~ <.>(~ A) ) ).

%----Non-normal modal axiom schemes
tff(modal_axiom_C,definition,
    ( $modal_axiom_C
   == ( ( [.](A)
        & [.](B) )
     => [.]
          ( A
          & B ) ) ) ).

tff(modal_axiom_Cstar,definition,
    ( $modal_axiom_Cstar
   == ( [.]
          ( A
          & B ) 
     => ( [.](A)
        & [.](B) ) ) ) ).

tff(modal_axiom_C_dual,definition,
    ( $modal_axiom_C_dual
   == ( ( <.>(A)
        | <.>(B) )
     => <.>
          ( A
          | B ) ) ) ).

tff(modal_axiom_Cstar,definition,
    ( $modal_axiom_Cstar
   == ( <.>
          ( A
          | B ) 
     => ( <.>(A)
        | <.>(B) ) ) ) ).

tff(modal_axiom_nnM,definition,
    ( $modal_axiom_nnM
   == ( [.]
          ( A
          & B )
     => [.](A) ) ) ).

tff(modal_axiom_RM,definition,
    ( $modal_axiom_RM
   == ( [ ( A
         => B ) }
    --> [ ( [.](A)
         => [.](B) ) ] ) ) ).

tff(modal_axiom_RE,definition,
    ( $modal_axiom_RE
   == ( [ ( A
        <=> B ) }
    --> [ ( [.](A)
        <=> [.](B) ) ] ) ) ).

%------------------------------------------------------------------------------
