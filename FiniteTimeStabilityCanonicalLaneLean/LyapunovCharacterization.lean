import FiniteTimeStabilityCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure LyapunovCharacterizationPackage where
  lyapunovFunction : Type
  derivativeAlongFlows : Type
  negativeDefiniteCondition : Prop
  settlingTimeEstimate : Prop

structure LyapunovCharacterizationEvidence (L : LyapunovCharacterizationPackage) where
  negativeDefiniteConditionClosed : L.negativeDefiniteCondition
  settlingTimeEstimateClosed : L.settlingTimeEstimate

def LyapunovCharacterizationClosed (L : LyapunovCharacterizationPackage) : Prop :=
  L.negativeDefiniteCondition ∧ L.settlingTimeEstimate

theorem lyapunov_characterization_closed_from_evidence
    (L : LyapunovCharacterizationPackage) (E : LyapunovCharacterizationEvidence L) :
    LyapunovCharacterizationClosed L := by
  exact And.intro E.negativeDefiniteConditionClosed E.settlingTimeEstimateClosed

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse
