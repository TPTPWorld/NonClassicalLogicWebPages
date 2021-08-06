%------------------------------------------------------------------------------
% File     : LOG001_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Name     : Common elements for modal logics
% Version  : Especial.
% English  : This provides the common axioms and inference rules of modal
%            logics in THF.

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : 
%------------------------------------------------------------------------------
% The semantics describe the model structure M = (W,R,D,V) with index set I, 
% where ...
% - W: set of worlds,
% - R(i), i in I, is a binary relation on W,
% - D(w), w in W, is a set of denotations available in world w
% - V(w), w in W, is a valuation function assigning a denotation to each 
%                 constant from the signature.
% - I(w,t), w in W, t a term or formula, is the interpretation of t in w.
%
% Semantics parameters: Four dimensions as follows ...
% - $constants      - Whether constants are (a) rigid or (b) flexible (world 
%                     dependent)
% - $consequence    - Whether formulae are assumed true in (a) the current
%                     local world or (b) all global worlds.
% - $quantification - Whether quantification domains are (a) varying, 
%                     (b) cumulative, (c) decreasing, or (d) constant.
% - $modalities     - The properties of the box operators, expressed via modal 
%                     axiom schemes.

tff(parameters,definition,
    ( $parameters 
   == [$constants, $consequence, $quantification, $modalities] ) ).

%----Constants
tff(constants_values,definition,
    ( $constants
   == [$flexible, $rigid] ) ).

tff(rigid_constants,definition,
    ( $rigid 
   == (I(W,c) = I(V,c)) ). 

%----No restriction for flexible constants.
tff(flexible_constants,definition,$true). 

%- Quantification
tff(quantification_values,definition,
    ( $quantification
   == [$varying, $cumulative, $decreasing, $constant] ) ).
% ... TBA

%----Consequence
tff(consequence_values,definition,
    ( $consequence
   == [$local, $global] ) ).
% ... TBA

%----Syntax extensions (additionally to classical connectives)
tff(box_type,type,'[.]' : $o > $o ).

tff(dia_type,type,'<.>' : $o > $o ).

%----Semantics of modal logics
tff(diamond,definition,
    ( <.>(P)
   == ~ [.](~ P) ) ).

% tff(propositional_tautologies,definition,P that are classical tautologies).

tff(modus_ponens,definition,
    ( $modus_ponens
   == ( [ P, P => Q]
    --> [Q] ) ) ).

tff(modal_necessitation,definition,
    ( $modal_necessitation
   == ( [P]
    --> [[.](P)] ) ) ).

%- Modal axiom schemes
tff(modal_axiom_K,definition,
    ( $modal_axiom_K
   == ( [.](A => B)
     => ( [.](A)
       => [.](B) ) ) ) ).

tff(modal_axiom_T,definition,
    ( $modal_axiom_T
   == ( [.](A)
     => A ) ) ).

tff(modal_axiom_B,definition,
    ( $modal_axiom_B
   == ( A
     => [.](<.>(A)) ) ) ).

tff(modal_axiom_D,definition,
    ( $modal_axiom_D
   == ( [.](A)
     => <.>(A) ) ) ).

tff(modal_axiom_4,definition,
    ( $modal_axiom_4
   == ( [.](A)
     => [.]([.](A)) ) ) ).

tff(modal_axiom_5,definition,
    ( $modal_axiom_5 
   == ( <.>(A)
     => [.](<.>(A)) ) ) ).

tff(modal_axiom_CD,definition,
    ( $modal_axiom_CD
   == ( <.>(A)
     => [.](A) ) ) ).

tff(modal_axiom_boxM,definition,
    ( $modal_axiom_boxM
   == [.]
        ( [.](A)
       => A ) ) ).

tff(modal_axiom_C4,definition,
    ( $modal_axiom_C4
   == ( [.]([.](A))
     => [.](A) ) ) ).

tff(modal_axiom_C,definition,
    ( $modal_axiom_C
   == ( <.>([.](A))
     => [.](<.>(A)) ) ) ).
      
%------------------------------------------------------------------------------
