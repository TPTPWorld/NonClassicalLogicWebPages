%------------------------------------------------------------------------------
% File     : LOG003_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Alethic modal logics
% Name     : Alethic modal logic definitions
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
tff(name,logic,$alethic_modal).

tff(necessary_type,type,'{$necessary}' : $o > $o ).

tff(possibly_type,type,'{$possibly}' : $o > $o ).

tff(necessary_shortform,definition,
    '{$necessary}' == '[.]' ).

tff(possibly_shortform,definition,
    '{$possibly}' == '<.>' ).

%------------------------------------------------------------------------------
