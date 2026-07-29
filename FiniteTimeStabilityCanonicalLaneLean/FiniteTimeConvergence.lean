import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure FiniteTimeConvergencePackage where
  systemDynamics : Type u
  equilibriumPoint : systemDynamics
  convergenceTime : systemDynamics -> ℝ
  finiteTimeSettling : Prop
  trajectory : ℝ -> systemDynamics -> systemDynamics
  settlingTimeBound : ℝ

structure FiniteTimeConvergenceEvidence (C : FiniteTimeConvergencePackage) where
  finiteTimeSettlingClosed : C.finiteTimeSettling
  trajectoryConverges : ∀ x, ∀ t ≥ C.settlingTimeBound, C.trajectory t x = C.equilibriumPoint
  settlingTimePositive : C.settlingTimeBound > 0

def FiniteTimeConvergenceClosed (C : FiniteTimeConvergencePackage) : Prop :=
  C.finiteTimeSettling ∧ (∀ x, ∀ t ≥ C.settlingTimeBound, C.trajectory t x = C.equilibriumPoint) ∧ C.settlingTimeBound > 0

theorem finite_time_convergence_closed_from_evidence (C : FiniteTimeConvergencePackage) (E : FiniteTimeConvergenceEvidence C) : FiniteTimeConvergenceClosed C := by
  exact And.intro E.finiteTimeSettlingClosed (And.intro E.trajectoryConverges E.settlingTimePositive)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse