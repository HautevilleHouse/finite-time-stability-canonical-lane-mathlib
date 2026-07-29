import FiniteTimeStabilityCanonicalLaneLean.PerelmanRoute

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure LyapunovAnalyticCertificate (L : LyapunovCharacterizationPackage) where
  negativeDefiniteCondition : Prop
  settlingTimeEstimate : Prop
  negativeDefiniteConditionClosed : negativeDefiniteCondition
  settlingTimeEstimateClosed : settlingTimeEstimate
  lyapunovEvidence : LyapunovCharacterizationEvidence L

def LyapunovAnalyticCertificateClosed (L : LyapunovCharacterizationPackage)
    (C : LyapunovAnalyticCertificate L) : Prop :=
  C.negativeDefiniteCondition ∧
  C.settlingTimeEstimate ∧
  LyapunovCharacterizationClosed L

theorem lyapunov_analytic_certificate_closed
    (L : LyapunovCharacterizationPackage) (C : LyapunovAnalyticCertificate L) :
    LyapunovAnalyticCertificateClosed L C := by
  exact And.intro C.negativeDefiniteConditionClosed
    (And.intro C.settlingTimeEstimateClosed
      (lyapunov_characterization_closed_from_evidence L C.lyapunovEvidence))

structure NoncollapsingAnalyticCertificate {L : LyapunovCharacterizationPackage}
    (N : NoncollapsingPackage L) where
  noLocalCollapsing : Prop
  scaleInvariantVolumeLowerBound : Prop
  curvatureScaleCompatibility : Prop
  ancientSolutionCompactnessInput : Prop
  noLocalCollapsingClosed : noLocalCollapsing
  scaleInvariantVolumeLowerBoundClosed : scaleInvariantVolumeLowerBound
  curvatureScaleCompatibilityClosed : curvatureScaleCompatibility
  ancientSolutionCompactnessInputClosed : ancientSolutionCompactnessInput
  noncollapsingEvidence : NoncollapsingEvidence N

def NoncollapsingAnalyticCertificateClosed {L : LyapunovCharacterizationPackage}
    {N : NoncollapsingPackage L} (C : NoncollapsingAnalyticCertificate N) : Prop :=
  C.noLocalCollapsing ∧ C.scaleInvariantVolumeLowerBound ∧
  C.curvatureScaleCompatibility ∧ C.ancientSolutionCompactnessInput ∧
  NoncollapsingClosed N

theorem noncollapsing_analytic_certificate_closed
    {L : LyapunovCharacterizationPackage} {N : NoncollapsingPackage L}
    (C : NoncollapsingAnalyticCertificate N) : NoncollapsingAnalyticCertificateClosed C := by
  exact And.intro C.noLocalCollapsingClosed
    (And.intro C.scaleInvariantVolumeLowerBoundClosed
      (And.intro C.curvatureScaleCompatibilityClosed
        (And.intro C.ancientSolutionCompactnessInputClosed
          (noncollapsing_closed_from_evidence N C.noncollapsingEvidence))))

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse
