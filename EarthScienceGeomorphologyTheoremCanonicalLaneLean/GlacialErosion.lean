import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure GlacialErosionPackage where
  iceThickness : Type u
  basalSlidingVelocity : Type v
  erosionLaw : Prop
  quarryingRate : Prop
  abrasionRate : Prop
  subglacialHydrology : Prop
  landscapeEvolution : Prop

structure GlacialErosionEvidence (G : GlacialErosionPackage) where
  erosionLawClosed : G.erosionLaw
  quarryingRateClosed : G.quarryingRate
  abrasionRateClosed : G.abrasionRate
  subglacialHydrologyClosed : G.subglacialHydrology
  landscapeEvolutionClosed : G.landscapeEvolution

def GlacialErosionClosed (G : GlacialErosionPackage) : Prop :=
  G.erosionLaw ∧ G.quarryingRate ∧ G.abrasionRate ∧
  G.subglacialHydrology ∧ G.landscapeEvolution

theorem glacial_erosion_closed_from_evidence (G : GlacialErosionPackage)
    (E : GlacialErosionEvidence G) : GlacialErosionClosed G := by
  exact And.intro E.erosionLawClosed
    (And.intro E.quarryingRateClosed
      (And.intro E.abrasionRateClosed
        (And.intro E.subglacialHydrologyClosed E.landscapeEvolutionClosed)))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse