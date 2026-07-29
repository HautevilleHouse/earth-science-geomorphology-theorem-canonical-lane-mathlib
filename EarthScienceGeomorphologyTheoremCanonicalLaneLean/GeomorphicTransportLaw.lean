import EarthScienceGeomorphologyTheoremCanonicalLaneLean.FluvialLandformEvolution

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure GeomorphicTransportLawPackage {G : RiemannianCurvaturePackage}
  {S : StreamPowerIncisonPackage G} {H : HillslopeDiffusionPackage G}
  {F : FluvialLandformEvolutionPackage S H} where
  conservationMass : Prop
  momentumBudget : Prop
  energyDissipation : Prop
  entrainmentThreshold : Prop
  transportCapacity : Prop

structure GeomorphicTransportLawEvidence {G : RiemannianCurvaturePackage}
  {S : StreamPowerIncisonPackage G} {H : HillslopeDiffusionPackage G}
  {F : FluvialLandformEvolutionPackage S H}
  (T : GeomorphicTransportLawPackage S H F) where
  conservationMassClosed : T.conservationMass
  momentumBudgetClosed : T.momentumBudget
  energyDissipationClosed : T.energyDissipation
  entrainmentThresholdClosed : T.entrainmentThreshold
  transportCapacityClosed : T.transportCapacity

def GeomorphicTransportLawClosed {G : RiemannianCurvaturePackage}
  {S : StreamPowerIncisonPackage G} {H : HillslopeDiffusionPackage G}
  {F : FluvialLandformEvolutionPackage S H}
  (T : GeomorphicTransportLawPackage S H F) : Prop :=
  T.conservationMass ∧ T.momentumBudget ∧ T.energyDissipation ∧
  T.entrainmentThreshold ∧ T.transportCapacity

theorem geomorphic_transport_law_closed_from_evidence
  {G : RiemannianCurvaturePackage} {S : StreamPowerIncisonPackage G}
  {H : HillslopeDiffusionPackage G} {F : FluvialLandformEvolutionPackage S H}
  (T : GeomorphicTransportLawPackage S H F) (E : GeomorphicTransportLawEvidence T) :
  GeomorphicTransportLawClosed T := by
  exact And.intro E.conservationMassClosed
    (And.intro E.momentumBudgetClosed
      (And.intro E.energyDissipationClosed
        (And.intro E.entrainmentThresholdClosed E.transportCapacityClosed)))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse