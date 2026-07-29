import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure HomogeneousFiniteTimeStability where
  homogeneityDegree : Prop
  derivativeEstimateHomogeneous : Prop
  finiteTimeConvergence : Prop
  settlingTimeBoundHomogeneous : Prop
  homogeneityDegreeClosed : homogeneityDegree
  derivativeEstimateHomogeneousClosed : derivativeEstimateHomogeneous
  finiteTimeConvergenceClosed : finiteTimeConvergence
  settlingTimeBoundHomogeneousClosed : settlingTimeBoundHomogeneous

def HomogeneousFiniteTimeStabilityClosed (H : HomogeneousFiniteTimeStability) : Prop :=
  H.homogeneityDegree ∧ H.derivativeEstimateHomogeneous ∧ H.finiteTimeConvergence ∧ H.settlingTimeBoundHomogeneous

theorem homogeneous_finite_time_stability_closed_from_evidence
    (H : HomogeneousFiniteTimeStability) : HomogeneousFiniteTimeStabilityClosed H := by
  exact And.intro H.homogeneityDegreeClosed
    (And.intro H.derivativeEstimateHomogeneousClosed
      (And.intro H.finiteTimeConvergenceClosed H.settlingTimeBoundHomogeneousClosed))

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse