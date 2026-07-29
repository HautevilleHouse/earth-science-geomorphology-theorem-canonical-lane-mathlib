import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure GeomorphologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeomorphologyAdmittedObject where
  space : GeomorphologySpace
  closedLandscape : Prop
  continuousErosion : Prop
  modelConsistent : Prop
  conclusion : modelConsistent

structure GeomorphologyEndgameState where
  object : GeomorphologyAdmittedObject

def GeomorphologyWitnessClosed (O : GeomorphologyAdmittedObject) : Prop :=
  O.modelConsistent

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse