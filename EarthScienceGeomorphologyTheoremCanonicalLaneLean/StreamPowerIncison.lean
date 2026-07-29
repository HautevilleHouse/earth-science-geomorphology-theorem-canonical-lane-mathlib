import EarthScienceGeomorphologyTheoremCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure StreamPowerIncisonPackage (G : RiemannianCurvaturePackage) where
  dischargeField : Type u
  slopeField : Type v
  erosionCoefficient : Prop
  incisionLaw : Prop

structure StreamPowerIncisonEvidence {G : RiemannianCurvaturePackage}
  (S : StreamPowerIncisonPackage G) where
  dischargeFieldClosed : S.dischargeField
  slopeFieldClosed : S.slopeField
  erosionCoefficientClosed : S.erosionCoefficient
  incisionLawClosed : S.incisionLaw

def StreamPowerIncisonClosed {G : RiemannianCurvaturePackage}
  (S : StreamPowerIncisonPackage G) : Prop :=
  S.dischargeField ∧ S.slopeField ∧ S.erosionCoefficient ∧ S.incisionLaw

theorem stream_power_incison_closed_from_evidence {G : RiemannianCurvaturePackage}
  (S : StreamPowerIncisonPackage G) (E : StreamPowerIncisonEvidence S) :
  StreamPowerIncisonClosed S := by
  exact And.intro E.dischargeFieldClosed
    (And.intro E.slopeFieldClosed
      (And.intro E.erosionCoefficientClosed E.incisionLawClosed))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse