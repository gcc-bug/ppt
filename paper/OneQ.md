**Objective (4/5):**

This paper introduces OneQ, the first optimizing compilation framework for photonic one-way quantum computing (also named measurement-based quantum computing).

> Photonic qubits offer unique advantages, such as scalability, long coherence times, and easy integration with quantum networks.

**Challenges (3/5):**  


- Dynamic qubit generation.
- Computation via measurements (entanglement between photonic qubits is performed by projective measurements onto entangled states, aka fusion).
- Instant qubit destruction after measurement (means cannot be reinitialized and only can be fused at once).

**Key Contributions (3/5):**

- partitioned scheduling, 

- fusion graph generation,
- optimized routing for efficient program mapping. 

**Noteworthy(2/5):** 

While the basic idea of MBQC and the use of resource states (small entangled states) to build larger entangled states have been studied before.

**Results (4/5):** 

- OneQ's techniques can drastically reduce resource and time requirements in MBQC programs.
- The framework's flexibility makes it adaptable to various photonic hardware configurations.