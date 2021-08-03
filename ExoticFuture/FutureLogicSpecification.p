% Index sets
thf(quantification,logic,(
    $modal ==
      [ $constants == $rigid,
        $quantification == $constant,
        $consequence == $global,
        $index_sets ==
          [ agent == [archer,bond,batman],
            other == [mi,ma,me,mu] ],
        $modalities == [
          agent == $modal_system_S4,
          other == $modal_system_S5 ]])).
% We can employ the defined meta-level function $forallindices in order to express
% the same statement multiple times for all different boxes (here: archer, bond, batman)
% of the same index set (here: agent), hence the following statement
thf(1,axiom, $forallindices(X:agent, {$box:#X} @ ($true))).
% is equivalent to the set of the following three statements:
thf(1a,axiom, {$box:#archer} @ ($true)).
thf(1b,axiom, {$box:#bond} @ ($true)).
thf(1c,axiom, {$box:#batmen} @ ($true)).


% Arbitrary reasoning on the accessibility relation
thf(quantification,logic,(
    $modal ==
      [ $constants == $rigid,
        $quantification == $constant,
        $consequence == $global,
        $modalities ==
          ! [X: $int] :
            $ite($greater @ X @ 0,$modal_system_K,$modal_system_KB)] )).


% Combination of logics
thf(funky_mixed,logic,(
    [ $modal ==
        [ $constants == $rigid,
          $quantification == $constant,
          $consequence == $global,
          $modalities == $modal_system_S5 ],
      $dialetheic ==
        [ $truth_values ==
            [ $true,
              $false,
              $both ],
          $embedding == $translational ] ] )).