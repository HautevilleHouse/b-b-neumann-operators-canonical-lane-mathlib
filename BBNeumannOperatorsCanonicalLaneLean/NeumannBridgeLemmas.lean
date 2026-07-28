import canonicalLaneMathlib.AdmissibleClass
import BBNeumannOperatorsCanonicalLaneLean.NeumannOperatorsAdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  neumannWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse