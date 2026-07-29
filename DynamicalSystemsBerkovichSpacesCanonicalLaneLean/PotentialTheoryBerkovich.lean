import canonicalLaneMathlib.AdmissibleClass

/-!
# Potential Theory on Berkovich Spaces Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure PotentialTheory where
  laplacian : BerkovichSpace ℂ → ℝ
  energyFunctional : Prop
  capacity : Prop
  energyFunctionalTerm : energyFunctional

def PotentialTheoryClosed (P : PotentialTheory) : Prop := P.energyFunctional

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse