import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BBNeumannOperatorsCanonicalLaneLean.BBNeumannAdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BBNeumannWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.operatorClosed  -- need to adapt; A.object is of type BBNeumannAdmittedObject

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse