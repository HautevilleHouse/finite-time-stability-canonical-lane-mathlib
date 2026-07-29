import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FiniteTimeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FiniteTimeAdmittedObject where
  space : FiniteTimeSpace
  system : carrier -> carrier -> Prop
  lyapunovCandidate : carrier -> Float
  finiteTimeConvergence : Prop
  conclusion : finiteTimeConvergence

structure FiniteTimeEndgameState where
  object : FiniteTimeAdmittedObject

def FiniteTimeWitnessClosed (O : FiniteTimeAdmittedObject) : Prop :=
  O.finiteTimeConvergence

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse
