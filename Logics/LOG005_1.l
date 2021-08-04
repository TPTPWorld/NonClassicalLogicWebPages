%------------------------------------------------------------------------------
% File     : LOG003_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Epistemic modal logics
% Name     : Epistemic modal logic definitions
% Version  : Especial.
% English  : 

% Refs     : [vDH15] van Ditmarsch et al. (2015), Handbook of Epistemic Log
% Source   : [TPTP]
% Names    : 

% Syntax   : 

% Comments : See Logics/LOG001_2.l for details of the modal logic systems
%------------------------------------------------------------------------------
%----Include common definitions
include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
tff(name,logic,$epistemic_modal).

tff(knows_type,type,'{$knows}' : $o > $o ).

tff(knows_shortform,definition,
    '{$knows}' == '[.]' ).

%------------------------------------------------------------------------------
