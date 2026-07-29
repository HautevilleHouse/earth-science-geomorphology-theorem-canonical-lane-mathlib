import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure LandformEvolutionPackage where
  initialTopography : Type u
  erosionRate : Type v
  tectonicUplift : Type w
  baseLevelChange : Type x
  diffusionCoefficient : Prop
  streamPowerCoefficient : Prop
  evolutionEquation : Prop
  boundaryConditions : Prop

structure LandformEvolutionEvidence (L : LandformEvolutionPackage) where
  diffusionCoefficientClosed : L.diffusionCoefficient
  streamPowerCoefficientClosed : L.streamPowerCoefficient
  evolutionEquationClosed : L.evolutionEquation
  boundaryConditionsClosed : L.boundaryConditions

def LandformEvolutionClosed (L : LandformEvolutionPackage) : Prop :=
  L.diffusionCoefficient ∧ L.streamPowerCoefficient ∧
  L.evolutionEquation ∧ L.boundaryConditions

theorem landform_evolution_closed_from_evidence (L : LandformEvolutionPackage)
    (E : LandformEvolutionEvidence L) : LandformEvolutionClosed L := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.streamPowerCoefficientClosed
      (And.intro E.evolutionEquationClosed E.boundaryConditionsClosed))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse