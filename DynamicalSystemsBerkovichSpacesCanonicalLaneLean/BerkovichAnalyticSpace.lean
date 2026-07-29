import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichANRBody where
  carrier : Type u
  topology : TopologicalSpace carrier
  multiplicativeSeminorm : carrier -> ℝ
  seminormNonarchimedean : Prop
  seminormCompatible : Prop
  analyticStructure : Prop

structure BerkovichAnalyticSpace (B : BerkovichANRBody) where
  underlyingSpace : B.carrier
  sheafOfAnalyticFunctions : Type v
  stalkPrecision : Prop
  theLocalRingProperty : Prop
  isAnalyticallySeparated : Prop
  satisfiesBerkovichANR : B.analyticStructure

structure BerkovichAnalyticEvidence (B : BerkovichANRBody) (A : BerkovichAnalyticSpace B) where
  analyticFunctionsWellDefined : A.stalkPrecision
  localRingPropertyClosed : A.theLocalRingProperty
  analyticallySeparatedClosed : A.isAnalyticallySeparated
  berkovichANRClosed : A.satisfiesBerkovichANR

def BerkovichAnalyticClosed (B : BerkovichANRBody) (A : BerkovichAnalyticSpace B) : Prop :=
  A.stalkPrecision ∧ A.theLocalRingProperty ∧ A.isAnalyticallySeparated ∧ A.satisfiesBerkovichANR

theorem berkovich_analytic_closed_from_evidence (B : BerkovichANRBody) (A : BerkovichAnalyticSpace B) (E : BerkovichAnalyticEvidence B A) :
    BerkovichAnalyticClosed B A := by
  exact And.intro E.analyticFunctionsWellDefined
    (And.intro E.localRingPropertyClosed
      (And.intro E.analyticallySeparatedClosed E.berkovichANRClosed))

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse