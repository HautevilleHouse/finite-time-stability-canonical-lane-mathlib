import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure SlidingModeControl where
  slidingSurface : Type u
  reachingCondition : Prop
  equivalentControl : Prop
  finiteTimeReaching : Prop
  slidingSurfaceClosed : slidingSurface
  reachingConditionClosed : reachingCondition
  equivalentControlClosed : equivalentControl
  finiteTimeReachingClosed : finiteTimeReaching

def SlidingModeControlClosed (S : SlidingModeControl) : Prop :=
  S.reachingCondition ∧ S.equivalentControl ∧ S.finiteTimeReaching

theorem sliding_mode_control_closed_from_evidence
    (S : SlidingModeControl) : SlidingModeControlClosed S := by
  exact And.intro S.reachingConditionClosed
    (And.intro S.equivalentControlClosed S.finiteTimeReachingClosed)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse