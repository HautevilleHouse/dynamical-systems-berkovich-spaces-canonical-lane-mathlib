import canonicalLaneMathlib.AdmissibleClass

/-!
# Berkovich Space Structure Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichSpace (k : Type) [NormedField k] where
  points : Type u
  valuation : k → ℝ
  analyticStructure : Prop
  analyticStructureTerm : analyticStructure

structure BerkovichCurveStability where
  stableCurve : Prop
  genus : ℕ
  stableCurveTerm : stableCurve

def BerkovichStructureClosed (B : BerkovichSpace ℂ) : Prop := B.analyticStructure

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse