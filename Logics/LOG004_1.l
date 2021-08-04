%------------------------------------------------------------------------------
% File     : LOG003_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Deontic modal logics
% Name     : Deontic modal logic definitions
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : 
% Names    : 

% Syntax   : Number of formulae    :   14 (   6 unit)

% Comments : See Logics/LOG001_2.l for details of the modal logic systems
%------------------------------------------------------------------------------
%----Include common definitions
include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
tff(name,logic,$deontic_modal).

tff(obligatory_type,type,'{$obligatory}' : $o > $o ).

tff(permitted_type,type,'{$permitted}' : $o > $o ).

tff(forbidden_type,type,'{$forbidden}' : $o > $o ).

tff(obligatory_shortform,definition,
    '{$obligatory}' == '[.]' ).

tff(permitted_shortform,definition,
    '{$permitted}' == '<.>' ).

tff(forbidden_shortform,definition,
    '{$forbidden}' == '(.)' ).

%------------------------------------------------------------------------------
