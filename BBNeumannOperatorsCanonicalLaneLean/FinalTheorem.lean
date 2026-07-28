import canonicalLaneMathlib.AdmissibleClass
import BBNeumannOperatorsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

def ConstrainedBBNeumannClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bb_neumann_endgame (A : AdmissibleClass) :
    ConstrainedBBNeumannClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse