%------------------------------------------------------------------------------
% File     : LOG003_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Generic modal logics
% Name     : Generic modal logic definitions
% Version  : Especial.
% English  : 

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : See Logics/LOG001_2.l for details of the modal logic systems
%------------------------------------------------------------------------------
%----Include common definitions
include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
tff(name,logic,$modal).

tff(necessary_type,type,'{$box}' : $o > $o ).

tff(possibly_type,type,'{$dia}' : $o > $o ).

tff(necessary_shortform,definition,
    '{$box}' == '[.]' ).

tff(possibly_shortform,definition,
    '{$dia}' == '<.>' ).

%------------------------------------------------------------------------------
