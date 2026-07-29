import EarthScienceGeomorphologyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure EROSProcessPackage where
  erosionRateModel : Prop
  sedimentTransportLaw : Prop
  catchmentConnectivity : Prop
  tectonicUpliftInput : Prop

def EROSProcessClosed (E : EROSProcessPackage) : Prop :=
  E.erosionRateModel ∧ E.sedimentTransportLaw ∧ E.catchmentConnectivity ∧ E.tectonicUpliftInput

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse