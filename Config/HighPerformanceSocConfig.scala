
package chipyard

import org.chipsalliance.cde.config.{Config}
import freechips.rocketchip.subsystem._
import freechips.rocketchip.rocket._
import gemmini._

// High-performance configuration with Gemmini accelerator
class HighPerformanceGemminiConfig extends Config(
  new gemmini.WithEnhancedSystolicArraySize(64) ++                  // Larger systolic array for high performance
  new WithNBigCores(4) ++                                           // Quad-core, in-order Rocket cores
  new chipyard.config.WithSystemBusWidth(256) ++                    // Wider system bus for higher bandwidth
  new chipyard.config.WithPeripheryBusFrequency(1000.0) ++          // Increase peripheral bus frequency to 1 GHz
  new chipyard.config.WithMemoryBusFrequency(1000.0) ++             // Increase memory bus frequency to 1 GHz
  new chipyard.config.WithControlBusFrequency(1000.0) ++            // Increase control bus frequency to 1 GHz
  new freechips.rocketchip.subsystem.WithInclusiveCache ++          // Use LLC for enhanced memory coherence
  new chipyard.clocking.WithClockGroupsCombinedByName(("uncore",    // High-performance clock groups
    Seq("sbus", "mbus", "pbus", "fbus", "cbus", "obus", "implicit", "clock_tap"),
    Seq("tile"))) ++
  new testchipip.soc.WithMbusScratchpad(base = 0x08000000, size = 512 * 1024) ++ // Large scratchpad memory
  new chipyard.config.AbstractConfig                                // Extend the abstract base configuration
)