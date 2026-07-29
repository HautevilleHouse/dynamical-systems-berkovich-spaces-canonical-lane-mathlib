import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichCanonicalNeighborhoodPackage where
  region : Type u
  topology : TopologicalSpace region
  isClosedUnderDynamics : Prop
  scaleCompatibility : Prop
  persistenceUnderIteration : Prop

def berkovich_canonical_neighborhoods_closed (C : BerkovichCanonicalNeighborhoodPackage) : Prop :=
  C.isClosedUnderDynamics ∧ C.scaleCompatibility ∧ C.persistenceUnderIteration

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse