import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichDynamics where
  map : Type u → Type u
  analyticContinuation : Prop
  fixedPointStructure : Prop
  periodicCycleClassification : Prop
  canonicalHeight : Prop

structure BerkovichDynamicsEvidence (D : BerkovichDynamics) where
  analyticContinuationClosed : D.analyticContinuation
  fixedPointStructureClosed : D.fixedPointStructure
  periodicCycleClassificationClosed : D.periodicCycleClassification
  canonicalHeightClosed : D.canonicalHeight

def BerkovichDynamicsClosed (D : BerkovichDynamics) : Prop :=
  D.analyticContinuation ∧ D.fixedPointStructure ∧
  D.periodicCycleClassification ∧ D.canonicalHeight

theorem berkovich_dynamics_closed_from_evidence
    (D : BerkovichDynamics) (E : BerkovichDynamicsEvidence D) :
    BerkovichDynamicsClosed D := by
  exact And.intro E.analyticContinuationClosed
    (And.intro E.fixedPointStructureClosed
      (And.intro E.periodicCycleClassificationClosed E.canonicalHeightClosed))

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse