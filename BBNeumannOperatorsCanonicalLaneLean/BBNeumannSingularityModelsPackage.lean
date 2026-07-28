import BBNeumannOperatorsCanonicalLaneLean.BBNeumannInvariantPackage

namespace HautevilleHouse
namespace BBNeumannOperatorsCanonicalLaneLean

structure BBNeumannSingularityModelsPackage {P : BBNeumannOperatorPackage}
  {E : BBNeumannEvolutionPackage P} {I : BBNeumannInvariantPackage E} where
  blowupSequence : Type u
  limitOperator : P.hilbertSpace → P.hilbertSpace
  blowupMethod : Prop
  classification : Prop

structure BBNeumannSingularityModelsEvidence {P : BBNeumannOperatorPackage}
  {E : BBNeumannEvolutionPackage P} {I : BBNeumannInvariantPackage E}
  (S : BBNeumannSingularityModelsPackage) where
  blowupMethodClosed : S.blowupMethod
  classificationClosed : S.classification

def BBNeumannSingularityModelsClosed {P : BBNeumannOperatorPackage}
  {E : BBNeumannEvolutionPackage P} {I : BBNeumannInvariantPackage E}
  (S : BBNeumannSingularityModelsPackage) : Prop :=
  S.blowupMethod ∧ S.classification

theorem bb_neumann_singularity_models_closed_from_evidence {P : BBNeumannOperatorPackage}
  {E : BBNeumannEvolutionPackage P} {I : BBNeumannInvariantPackage E}
  (S : BBNeumannSingularityModelsPackage) (Ev : BBNeumannSingularityModelsEvidence S) :
  BBNeumannSingularityModelsClosed S := by
  exact And.intro Ev.blowupMethodClosed Ev.classificationClosed

end BBNeumannOperatorsCanonicalLaneLean
end HautevilleHouse