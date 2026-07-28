import BBNeumannOperatorsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

def ConstrainedNeumannClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neumann_endgame (A : AdmissibleClass) :
    ConstrainedNeumannClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse