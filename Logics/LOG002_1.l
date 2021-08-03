%------------------------------------------------------------------------------
% File     : LOG003_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Alethic modal logics
% Name     : Alethic modal logic definitions
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
tff(necessary_type,type,'{$box}' : $o > $o ).

tff(possibly_type,type,'{$dia}' : $o > $o ).

tff(necessary_shortform,definition,
    '{$box}' = '[.]' ).

tff(possibly_shortform,definition,
    '{$dia}' = '<.>' ).

%------------------------------------------------------------------------------
