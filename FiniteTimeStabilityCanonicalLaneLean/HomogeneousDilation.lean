import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure HomogeneousDilationPackage where
  vectorField : Type u
  dilationWeight : Prop
  homogeneousDegree : Prop
  stabilityGuarantee : Prop

structure HomogeneousDilationEvidence (H : HomogeneousDilationPackage) where
  dilationWeightClosed : H.dilationWeight
  homogeneousDegreeClosed : H.homogeneousDegree
  stabilityGuaranteeClosed : H.stabilityGuarantee

def HomogeneousDilationClosed (H : HomogeneousDilationPackage) : Prop :=
  H.dilationWeight ∧ H.homogeneousDegree ∧ H.stabilityGuarantee

theorem homogeneous_dilation_closed_from_evidence
    (H : HomogeneousDilationPackage) (E : HomogeneousDilationEvidence H) :
    HomogeneousDilationClosed H := by
  exact And.intro E.dilationWeightClosed
    (And.intro E.homogeneousDegreeClosed E.stabilityGuaranteeClosed)

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse