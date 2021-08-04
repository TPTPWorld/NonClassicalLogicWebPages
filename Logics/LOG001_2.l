%------------------------------------------------------------------------------
% File     : LOG001_2 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Name     : Modal logic systems
% Version  : Especial.
% English  : 

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : 
%------------------------------------------------------------------------------
%----Include common definitions
include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
%----Add many more here

tff(modal_system_K,definition,
    ( $modal_system_K 
   == ( $modus_ponens
      & $modal_necessitation
      & $modal_axiom_K ) ) ).

tff(modal_system_D,definition,
    ( $modal_system_D 
   == ( $modal_system_K
      & $modal_axiom_D ) ) ).

tff(modal_system_M,definition,
    ( $modal_system_M 
   == ( $modal_system_K
      & $modal_axiom_M ) ) ).

tff(modal_system_S4,definition,
    ( $modal_system_S4 
   == ( $modal_system_M
      & $modal_axiom_4 ) ) ).

tff(modal_system_S5,definition,
    ( $modal_system_S5 
   == ( $modal_system_S4
      & $modal_axiom_5 ) ) ).

%------------------------------------------------------------------------------
