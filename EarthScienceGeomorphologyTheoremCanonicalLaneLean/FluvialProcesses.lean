import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyTheoremCanonicalLaneLean

structure FluvialProcessesPackage where
  discharge : Type u
  sedimentLoad : Type v
  channelGeometry : Type w
  flowResistance : Prop
  bedloadTransport : Prop
  suspendedLoadTransport : Prop
  bankErosion : Prop
  channelEvolution : Prop

structure FluvialProcessesEvidence (F : FluvialProcessesPackage) where
  flowResistanceClosed : F.flowResistance
  bedloadTransportClosed : F.bedloadTransport
  suspendedLoadTransportClosed : F.suspendedLoadTransport
  bankErosionClosed : F.bankErosion
  channelEvolutionClosed : F.channelEvolution

def FluvialProcessesClosed (F : FluvialProcessesPackage) : Prop :=
  F.flowResistance ∧ F.bedloadTransport ∧
  F.suspendedLoadTransport ∧ F.bankErosion ∧ F.channelEvolution

theorem fluvial_processes_closed_from_evidence (F : FluvialProcessesPackage)
    (E : FluvialProcessesEvidence F) : FluvialProcessesClosed F := by
  exact And.intro E.flowResistanceClosed
    (And.intro E.bedloadTransportClosed
      (And.intro E.suspendedLoadTransportClosed
        (And.intro E.bankErosionClosed E.channelEvolutionClosed)))

end EarthScienceGeomorphologyTheoremCanonicalLaneLean
end HautevilleHouse