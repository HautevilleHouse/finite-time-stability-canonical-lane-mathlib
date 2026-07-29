import FiniteTimeStabilityCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace FiniteTimeStabilityCanonicalLaneLean

structure LyapunovEvidenceTerms (L : LyapunovCharacterizationPackage)
    (C : LyapunovAnalyticCertificate L) where
  negativeDefiniteCondition : C.negativeDefiniteCondition
  settlingTimeEstimate : C.settlingTimeEstimate
  lyapunovClosed : LyapunovCharacterizationClosed L

def LyapunovAnalyticCertificate.evidenceTerms (L : LyapunovCharacterizationPackage)
    (C : LyapunovAnalyticCertificate L) : LyapunovEvidenceTerms L C :=
  {
    negativeDefiniteCondition := C.negativeDefiniteConditionClosed
    settlingTimeEstimate := C.settlingTimeEstimateClosed
    lyapunovClosed := lyapunov_characterization_closed_from_evidence L C.lyapunovEvidence
  }

structure NoncollapsingEvidenceTerms {L : LyapunovCharacterizationPackage}
    (N : NoncollapsingPackage L) (C : NoncollapsingAnalyticCertificate N) where
  noLocalCollapsing : C.noLocalCollapsing
  scaleInvariantVolumeLowerBound : C.scaleInvariantVolumeLowerBound
  curvatureScaleCompatibility : C.curvatureScaleCompatibility
  ancientSolutionCompactnessInput : C.ancientSolutionCompactnessInput
  noncollapsingClosed : NoncollapsingClosed N

def NoncollapsingAnalyticCertificate.evidenceTerms {L : LyapunovCharacterizationPackage}
    (N : NoncollapsingPackage L) (C : NoncollapsingAnalyticCertificate N) :
    NoncollapsingEvidenceTerms N C :=
  {
    noLocalCollapsing := C.noLocalCollapsingClosed
    scaleInvariantVolumeLowerBound := C.scaleInvariantVolumeLowerBoundClosed
    curvatureScaleCompatibility := C.curvatureScaleCompatibilityClosed
    ancientSolutionCompactnessInput := C.ancientSolutionCompactnessInputClosed
    noncollapsingClosed := noncollapsing_closed_from_evidence N C.noncollapsingEvidence
  }

end FiniteTimeStabilityCanonicalLaneLean
end HautevilleHouse
