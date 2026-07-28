import BBNeumannOperatorsCanonicalLaneLean.BBNeumannSingularityModelsPackage
import BBNeumannOperatorsCanonicalLaneLean.BBNeumannInvariantPackage
import BBNeumannOperatorsCanonicalLaneLean.BBNeumannEvolutionPackage
import BBNeumannOperatorsCanonicalLaneLean.BBNeumannOperatorPackage
import BBNeumannOperatorsCanonicalLaneLean.BBNeumannAdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure BBNeumannRouteObligations where
  operatorClosed : Prop
  evolutionClosed : Prop
  invariantClosed : Prop
  singularityModelsClosed : Prop

structure BBNeumannRouteEvidence (R : BBNeumannRouteObligations) where
  operatorClosedEvidence : R.operatorClosed
  evolutionClosedEvidence : R.evolutionClosed
  invariantClosedEvidence : R.invariantClosed
  singularityModelsClosedEvidence : R.singularityModelsClosed

def BBNeumannRouteClosed (R : BBNeumannRouteObligations) : Prop :=
  R.operatorClosed ∧ R.evolutionClosed ∧ R.invariantClosed ∧ R.singularityModelsClosed

theorem bb_neumann_route_closed_from_evidence (R : BBNeumannRouteObligations)
  (E : BBNeumannRouteEvidence R) : BBNeumannRouteClosed R := by
  exact And.intro E.operatorClosedEvidence
    (And.intro E.evolutionClosedEvidence
      (And.intro E.invariantClosedEvidence E.singularityModelsClosedEvidence))

structure BBNeumannCanonicalLaneRoute (A : AdmissibleClass) where
  obligations : BBNeumannRouteObligations
  evidence : BBNeumannRouteEvidence obligations
  bridgeClosedFromRoute : BBNeumannWitnessClosed A.object
  gateClosedFromRoute : A.gateWitness

theorem bb_neumann_route_yields_constrained_closure
  (A : AdmissibleClass) (R : BBNeumannCanonicalLaneRoute A) : admittedClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse