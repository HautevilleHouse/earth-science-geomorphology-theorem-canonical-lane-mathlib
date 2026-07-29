import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure LandformEvolutionPDEPackage where
  timeParameter : Type u
  elevationField : timeParameter -> Type v
  initialElevationMatches : Prop
  differentiableElevationFamily : Prop
  sedimentTransportEquation : Prop
  maximalTimeInterval : Prop

structure LandformEvolutionPDEEvidence (P : LandformEvolutionPDEPackage) where
  initialElevationMatchesClosed : P.initialElevationMatches
  differentiableElevationFamilyClosed : P.differentiableElevationFamily
  sedimentTransportEquationClosed : P.sedimentTransportEquation
  maximalTimeIntervalClosed : P.maximalTimeInterval

def LandformEvolutionPDEClosed (P : LandformEvolutionPDEPackage) : Prop :=
  P.initialElevationMatches ∧
  P.differentiableElevationFamily ∧
  P.sedimentTransportEquation ∧
  P.maximalTimeInterval

theorem landform_evolution_pde_closed_from_evidence
    (P : LandformEvolutionPDEPackage) (E : LandformEvolutionPDEEvidence P) :
    LandformEvolutionPDEClosed P := by
  exact And.intro E.initialElevationMatchesClosed
    (And.intro E.differentiableElevationFamilyClosed
      (And.intro E.sedimentTransportEquationClosed E.maximalTimeIntervalClosed))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse