import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTimeStabilityCanonicalLaneLean.FiniteTimeConvergence

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure RobustnessPackage {L : LyapunovFunctionPackage}
    {H : HomogeneousDilationPackage L} {F : FiniteTimeConvergencePackage H} where
  perturbationBound : ℝ
  stabilityMargin : ℝ
  robustnessProof : Prop

structure RobustnessEvidence {L : LyapunovFunctionPackage}
    {H : HomogeneousDilationPackage L} {F : FiniteTimeConvergencePackage H}
    (R : RobustnessPackage F) where
  robustnessProofClosed : R.robustnessProof

def RobustnessClosed {L : LyapunovFunctionPackage}
    {H : HomogeneousDilationPackage L} {F : FiniteTimeConvergencePackage H}
    (R : RobustnessPackage F) : Prop :=
  R.robustnessProof

theorem robustness_closed_from_evidence
    {L : LyapunovFunctionPackage} {H : HomogeneousDilationPackage L}
    {F : FiniteTimeConvergencePackage H} (R : RobustnessPackage F)
    (E : RobustnessEvidence R) : RobustnessClosed R := by
  exact E.robustnessProofClosed

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse