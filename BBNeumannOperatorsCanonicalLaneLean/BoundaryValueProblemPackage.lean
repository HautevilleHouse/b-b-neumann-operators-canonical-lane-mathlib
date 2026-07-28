import canonicalLaneMathlib.AdmissibleClass
import BBNeumannOperatorsCanonicalLaneLean.NeumannOperatorPackage

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure BoundaryValueProblemPackage {P : NeumannOperatorPackage} where
  domainRegular : Prop
  boundaryRegular : Prop
  solutionExistence : Prop
  solutionUniqueness : Prop

structure BoundaryValueProblemEvidence {P : NeumannOperatorPackage} (B : BoundaryValueProblemPackage P) where
  domainRegularClosed : B.domainRegular
  boundaryRegularClosed : B.boundaryRegular
  solutionExistenceClosed : B.solutionExistence
  solutionUniquenessClosed : B.solutionUniqueness

def BoundaryValueProblemClosed {P : NeumannOperatorPackage} (B : BoundaryValueProblemPackage P) : Prop :=
  B.domainRegular ∧ B.boundaryRegular ∧ B.solutionExistence ∧ B.solutionUniqueness

theorem boundary_value_problem_closed_from_evidence {P : NeumannOperatorPackage} (B : BoundaryValueProblemPackage P) (E : BoundaryValueProblemEvidence B) :
    BoundaryValueProblemClosed B := by
  exact And.intro E.domainRegularClosed (And.intro E.boundaryRegularClosed (And.intro E.solutionExistenceClosed E.solutionUniquenessClosed))

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse