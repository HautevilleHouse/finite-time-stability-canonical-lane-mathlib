import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure FiniteTimeStabilitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FiniteTimeStabilityAdmittedObject where
  space : FiniteTimeStabilitySpace
  finiteTimeStabilityProperty : Prop
  conclusion : finiteTimeStabilityProperty

def FiniteTimeStabilityWitnessClosed (O : FiniteTimeStabilityAdmittedObject) : Prop :=
  O.finiteTimeStabilityProperty

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse