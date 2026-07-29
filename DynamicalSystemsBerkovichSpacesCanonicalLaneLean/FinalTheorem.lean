import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsBerkovichSpacesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

def ConstrainedBerkovichClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_berkovich_endgame (A : AdmissibleClass) :
    ConstrainedBerkovichClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse