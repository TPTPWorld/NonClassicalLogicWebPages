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
include('Logics/LOG001_1.l')
%------------------------------------------------------------------------------
%----Add many more here

tff(modal_S4,definition,(
    ( $modal_system_S5 
  <=> ( $modal_necessitation
      & $modal_distribution
      & $modal_M   % what's a meaningful name?
      & $modal_4 ) )).   % what's a meaningful name?

tff(modal_S5,definition,(
    ( $modal_system_S5 
  <=> ( $modal_necessitation
      & $modal_distribution
      & $modal_M   % what's a meaningful name?
      & $modal_4   % what's a meaningful name?
      & $modal_5 ) )).   % what's a meaningful name?

%------------------------------------------------------------------------------
