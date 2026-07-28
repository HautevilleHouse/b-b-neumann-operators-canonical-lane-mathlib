import BBNeumannOperatorsCanonicalLaneLean.BBNeumannOperatorPackage

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure BBNeumannEvolutionPackage (P : BBNeumannOperatorPackage) where
  timeParameter : Type u
  operatorFamily : timeParameter → (P.hilbertSpace → P.hilbertSpace)
  initialCondition : operatorFamily 0 = P.operator
  evolutionEquation : Prop
  uniqueness : Prop

structure BBNeumannEvolutionEvidence {P : BBNeumannOperatorPackage}
  (E : BBNeumannEvolutionPackage P) where
  initialConditionClosed : E.initialCondition
  evolutionEquationClosed : E.evolutionEquation
  uniquenessClosed : E.uniqueness

def BBNeumannEvolutionClosed {P : BBNeumannOperatorPackage}
  (E : BBNeumannEvolutionPackage P) : Prop :=
  E.initialCondition ∧ E.evolutionEquation ∧ E.uniqueness

theorem bb_neumann_evolution_closed_from_evidence {P : BBNeumannOperatorPackage}
  (E : BBNeumannEvolutionPackage P) (Ev : BBNeumannEvolutionEvidence E) :
  BBNeumannEvolutionClosed E := by
  exact And.intro Ev.initialConditionClosed (And.intro Ev.evolutionEquationClosed Ev.uniquenessClosed)

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse