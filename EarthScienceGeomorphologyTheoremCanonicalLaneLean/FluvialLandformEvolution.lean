import EarthScienceGeomorphologyTheoremCanonicalLaneLean.StreamPowerIncison
import EarthScienceGeomorphologyTheoremCanonicalLaneLean.HillslopeDiffusion

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure FluvialLandformEvolutionPackage {G : RiemannianCurvaturePackage}
  {S : StreamPowerIncisonPackage G} {H : HillslopeDiffusionPackage G} where
  coupledTransport : Prop
  sedimentFlux : Prop
  landformAges : Prop
  responseTime : Prop

structure FluvialLandformEvolutionEvidence {G : RiemannianCurvaturePackage}
  {S : StreamPowerIncisonPackage G} {H : HillslopeDiffusionPackage G}
  (F : FluvialLandformEvolutionPackage S H) where
  coupledTransportClosed : F.coupledTransport
  sedimentFluxClosed : F.sedimentFlux
  landformAgesClosed : F.landformAges
  responseTimeClosed : F.responseTime

def FluvialLandformEvolutionClosed {G : RiemannianCurvaturePackage}
  {S : StreamPowerIncisonPackage G} {H : HillslopeDiffusionPackage G}
  (F : FluvialLandformEvolutionPackage S H) : Prop :=
  F.coupledTransport ∧ F.sedimentFlux ∧ F.landformAges ∧ F.responseTime

theorem fluvial_landform_evolution_closed_from_evidence
  {G : RiemannianCurvaturePackage} {S : StreamPowerIncisonPackage G}
  {H : HillslopeDiffusionPackage G} (F : FluvialLandformEvolutionPackage S H)
  (E : FluvialLandformEvolutionEvidence F) : FluvialLandformEvolutionClosed F := by
  exact And.intro E.coupledTransportClosed
    (And.intro E.sedimentFluxClosed
      (And.intro E.landformAgesClosed E.responseTimeClosed))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse