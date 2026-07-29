import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure HomogeneityApproachPackage where
  vectorField : Type u -> Type u
  homogeneityDegree : ℝ
  homogeneousFunction : Type u -> Type u -> Prop
  finiteTimeStabilityImplied : Prop
  lyapunovCandidate : Type u

structure HomogeneityApproachEvidence (H : HomogeneityApproachPackage) where
  homogeneityDegreeNegative : H.homogeneityDegree < 0
  finiteTimeStabilityImpliedClosed : H.finiteTimeStabilityImplied
  lyapunovCandidateValid : Prop
  lyapunovCandidateValidClosed : H.lyapunovCandidateValid

def HomogeneityApproachClosed (H : HomogeneityApproachPackage) : Prop :=
  H.homogeneityDegree < 0 ∧ H.finiteTimeStabilityImplied ∧ H.lyapunovCandidateValid

theorem homogeneity_approach_closed_from_evidence (H : HomogeneityApproachPackage) (E : HomogeneityApproachEvidence H) : HomogeneityApproachClosed H := by
  exact And.intro E.homogeneityDegreeNegative (And.intro E.finiteTimeStabilityImpliedClosed E.lyapunovCandidateValidClosed)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse