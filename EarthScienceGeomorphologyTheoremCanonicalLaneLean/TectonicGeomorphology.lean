import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure TectonicGeomorphologyPackage where
  faultSlipRate : Type u
  upliftRate : Type v
  topographicResponse : Type w
  faultScarpDegradation : Prop
  drainageNetworkAdjustment : Prop
  terraceFormation : Prop
  landformDating : Prop
  isostaticRebound : Prop

structure TectonicGeomorphologyEvidence (T : TectonicGeomorphologyPackage) where
  faultScarpDegradationClosed : T.faultScarpDegradation
  drainageNetworkAdjustmentClosed : T.drainageNetworkAdjustment
  terraceFormationClosed : T.terraceFormation
  landformDatingClosed : T.landformDating
  isostaticReboundClosed : T.isostaticRebound

def TectonicGeomorphologyClosed (T : TectonicGeomorphologyPackage) : Prop :=
  T.faultScarpDegradation ∧ T.drainageNetworkAdjustment ∧
  T.terraceFormation ∧ T.landformDating ∧ T.isostaticRebound

theorem tectonic_geomorphology_closed_from_evidence (T : TectonicGeomorphologyPackage)
    (E : TectonicGeomorphologyEvidence T) : TectonicGeomorphologyClosed T := by
  exact And.intro E.faultScarpDegradationClosed
    (And.intro E.drainageNetworkAdjustmentClosed
      (And.intro E.terraceFormationClosed
        (And.intro E.landformDatingClosed E.isostaticReboundClosed)))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse