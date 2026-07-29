import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure SlopeStabilityPackage where
  slopeAngle : Prop
  materialShearStrength : Prop
  groundwaterPressure : Prop
  factorOfSafety : Prop
  failureMechanism : Prop

structure SlopeStabilityEvidence (S : SlopeStabilityPackage) where
  slopeAngleClosed : S.slopeAngle
  materialShearStrengthClosed : S.materialShearStrength
  groundwaterPressureClosed : S.groundwaterPressure
  factorOfSafetyClosed : S.factorOfSafety
  failureMechanismClosed : S.failureMechanism

def SlopeStabilityClosed (S : SlopeStabilityPackage) : Prop :=
  S.slopeAngle ∧ S.materialShearStrength ∧
  S.groundwaterPressure ∧ S.factorOfSafety ∧
  S.failureMechanism

theorem slope_stability_closed_from_evidence
    (S : SlopeStabilityPackage) (E : SlopeStabilityEvidence S) :
    SlopeStabilityClosed S := by
  exact And.intro E.slopeAngleClosed
    (And.intro E.materialShearStrengthClosed
      (And.intro E.groundwaterPressureClosed
        (And.intro E.factorOfSafetyClosed E.failureMechanismClosed)))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse