import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BBNeumannOperatorsCanonicalLaneLean.BBNeumannBridgeLemmas

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse