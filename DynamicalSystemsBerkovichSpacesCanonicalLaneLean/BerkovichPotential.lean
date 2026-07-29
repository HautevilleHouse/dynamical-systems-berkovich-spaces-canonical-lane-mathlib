import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichPotentialPackage {B : BerkovichAffinoidPackage}
    (D : BerkovichDynamicalPackage B) where
  capacity : Prop
  greenFunction : Prop
  equilibriumMeasure : Prop
  energyFunctional : Prop

structure BerkovichPotentialEvidence {B : BerkovichAffinoidPackage}
    {D : BerkovichDynamicalPackage B} (P : BerkovichPotentialPackage D) where
  capacityClosed : P.capacity
  greenFunctionClosed : P.greenFunction
  equilibriumMeasureClosed : P.equilibriumMeasure
  energyFunctionalClosed : P.energyFunctional

def BerkovichPotentialClosed {B : BerkovichAffinoidPackage}
    {D : BerkovichDynamicalPackage B} (P : BerkovichPotentialPackage D) : Prop :=
  P.capacity ∧ P.greenFunction ∧ P.equilibriumMeasure ∧ P.energyFunctional

theorem berkovich_potential_closed_from_evidence
    {B : BerkovichAffinoidPackage} {D : BerkovichDynamicalPackage B}
    (P : BerkovichPotentialPackage D) (E : BerkovichPotentialEvidence P) :
    BerkovichPotentialClosed P := by
  exact And.intro E.capacityClosed
    (And.intro E.greenFunctionClosed
      (And.intro E.equilibriumMeasureClosed E.energyFunctionalClosed))

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse
