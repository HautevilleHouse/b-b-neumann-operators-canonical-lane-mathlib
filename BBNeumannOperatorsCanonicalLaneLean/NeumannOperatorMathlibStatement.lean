import BBNeumannOperatorsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

theorem mathlib_neumann_endgame_available (A : AdmissibleClass) :
    ConstrainedNeumannClosure A := by
  exact constrained_neumann_endgame A

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse