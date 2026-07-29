import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesCanonicalLaneLean.BerkovichAnalyticSpace

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichPotentialKernel (B : BerkovichANRBody) (A : BerkovichAnalyticSpace B) where
  kernel : Type u
  singularityDegree : Prop
  energyFunctional : Prop
  capacity : Prop
  equilibriumMeasure : Prop

structure BerkovichPotentialEvidence (B : BerkovichANRBody) (A : BerkovichAnalyticSpace B) (K : BerkovichPotentialKernel B A) where
  kernelDefined : Nonempty K.kernel
  singularityDegreeClosed : K.singularityDegree
  energyFunctionalClosed : K.energyFunctional
  capacityClosed : K.capacity
  equilibriumMeasureClosed : K.equilibriumMeasure

def BerkovichPotentialClosed (B : BerkovichANRBody) (A : BerkovichAnalyticSpace B) (K : BerkovichPotentialKernel B A) : Prop :=
  K.singularityDegree ∧ K.energyFunctional ∧ K.capacity ∧ K.equilibriumMeasure

theorem berkovich_potential_closed_from_evidence (B : BerkovichANRBody) (A : BerkovichAnalyticSpace B) (K : BerkovichPotentialKernel B A) (E : BerkovichPotentialEvidence B A K) :
    BerkovichPotentialClosed B A K := by
  exact And.intro E.singularityDegreeClosed
    (And.intro E.energyFunctionalClosed
      (And.intro E.capacityClosed E.equilibriumMeasureClosed))

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse