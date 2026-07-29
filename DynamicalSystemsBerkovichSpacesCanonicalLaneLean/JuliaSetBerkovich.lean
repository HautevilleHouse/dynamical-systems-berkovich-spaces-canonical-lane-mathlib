import canonicalLaneMathlib.AdmissibleClass

/-!
# Julia Set in Berkovich Space Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure JuliaSet (B : BerkovichSpace ℂ) (D : DynamicalSystem B) where
  set : Set B.points
  forwardInvariant : Prop
  repellingPeriodicPointsClosure : Prop
  forwardInvariantTerm : forwardInvariant
  repellingClosureTerm : repellingPeriodicPointsClosure

def JuliaSetClosed (J : JuliaSet B D) : Prop := J.forwardInvariant ∧ J.repellingPeriodicPointsClosure

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse