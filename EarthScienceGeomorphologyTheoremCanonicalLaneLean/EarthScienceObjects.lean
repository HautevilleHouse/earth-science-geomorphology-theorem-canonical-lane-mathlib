import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure EarthScienceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EarthScienceAdmittedObject where
  space : EarthScienceSpace
  geomorphologicalConstraints : Prop
  processModelConvergence : Prop
  conclusion : geomorphologicalConstraints ∧ processModelConvergence

structure EarthScienceEndgameState where
  object : EarthScienceAdmittedObject

def EarthScienceWitnessClosed (O : EarthScienceAdmittedObject) : Prop :=
  O.geomorphologicalConstraints ∧ O.processModelConvergence

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse