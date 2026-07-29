import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesCanonicalLaneLean

structure BerkovichProjection (X : BerkovichSpace) where
  domain : Type u
  codomain : Type v
  toFun : domain -> codomain
  analytic : Prop

def berkovich_projection_closed (p : BerkovichProjection X) : Prop :=
  p.analytic

end DynamicalSystemsBerkovichSpacesCanonicalLaneLean
end HautevilleHouse