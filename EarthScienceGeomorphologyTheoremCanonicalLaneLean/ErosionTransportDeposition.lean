import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure ErosionTransportDepositionPackage where
  erosionRate : Prop
  transportCapacity : Prop
  depositionRate : Prop
  conservationOfMass : Prop
  netLandformChange : Prop

structure ErosionTransportDepositionEvidence (E : ErosionTransportDepositionPackage) where
  erosionRateClosed : E.erosionRate
  transportCapacityClosed : E.transportCapacity
  depositionRateClosed : E.depositionRate
  conservationOfMassClosed : E.conservationOfMass
  netLandformChangeClosed : E.netLandformChange

def ErosionTransportDepositionClosed (E : ErosionTransportDepositionPackage) : Prop :=
  E.erosionRate ∧ E.transportCapacity ∧
  E.depositionRate ∧ E.conservationOfMass ∧
  E.netLandformChange

theorem erosion_transport_deposition_closed_from_evidence
    (E : ErosionTransportDepositionPackage)
    (Ev : ErosionTransportDepositionEvidence E) :
    ErosionTransportDepositionClosed E := by
  exact And.intro Ev.erosionRateClosed
    (And.intro Ev.transportCapacityClosed
      (And.intro Ev.depositionRateClosed
        (And.intro Ev.conservationOfMassClosed Ev.netLandformChangeClosed)))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse