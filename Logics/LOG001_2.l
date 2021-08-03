%------------------------------------------------------------------------------
% File     : LOG001_2 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Name     : Modal logic systems
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : 
% Names    : 

% Syntax   : Number of formulae    :   14 (   6 unit)

% Comments : 
%------------------------------------------------------------------------------
%----Include common definitions
include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
%----Add many more here

tff(modal_system_K,definition,
    ( $modal_system_K 
  <=> ( $modus_ponens
      & $modal_necessitation
      & $modal_axiom_K ) ) ).

tff(modal_system_S4,definition,
    ( $modal_system_S4 
  <=> ( $modus_ponens
      & $modal_necessitation
      & $modal_axiom_K
      & $modal_axiom_M
      & $modal_axiom_4 ) ) ).

tff(modal_system_S5,definition,
    ( $modal_system_S5 
  <=> ( $modus_ponens
      & $modal_necessitation
      & $modal_axiom_K
      & $modal_axiom_M
      & $modal_axiom_4
      & $modal_axiom_5 ) ) ).

%------------------------------------------------------------------------------
