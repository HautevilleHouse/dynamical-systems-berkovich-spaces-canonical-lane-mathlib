import canonicalLaneMathlib.AdmissibleClass

/-!
# Dynamical Systems on Berkovich Spaces Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure DynamicalSystem (B : BerkovichSpace ℂ) where
  map : B.points → B.points
  continuous : Prop
  degree : ℕ
  criticalPoints : Prop
  continuousTerm : continuous

def DynamicalSystemClosed (D : DynamicalSystem B) : Prop := D.continuous

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse