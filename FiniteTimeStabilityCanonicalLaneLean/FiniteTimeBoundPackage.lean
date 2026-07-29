import FiniteTimeStabilityCanonicalLaneLean.LyapunovFunctionPackage

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure FiniteTimeBoundPackage where
  settlingTime : ℝ
  convergenceRate : ℝ
  boundConstant : ℝ
  inequality : Prop

structure FiniteTimeBoundEvidence (B : FiniteTimeBoundPackage) where
  settlingTimeFinite : B.settlingTime < ∞
  inequalityClosed : B.inequality

def FiniteTimeBoundClosed (B : FiniteTimeBoundPackage) : Prop :=
  B.settlingTime < ∞ ∧ B.inequality

theorem finite_time_bound_closed_from_evidence (B : FiniteTimeBoundPackage)
    (E : FiniteTimeBoundEvidence B) : FiniteTimeBoundClosed B := by
  exact And.intro E.settlingTimeFinite E.inequalityClosed

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse