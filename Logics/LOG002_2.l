%------------------------------------------------------------------------------
% File     : LOG002_2 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Name     : Generic modal logic K
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
%----Include system definitions
include('Logics/LOG001_2.l').
%----Include generic modal logic definitions
include('Logics/LOG002_1.l')
%------------------------------------------------------------------------------
tff(name,name,$modal_K).

tff(make_K,axiom,$modal_system_K).

%------------------------------------------------------------------------------
