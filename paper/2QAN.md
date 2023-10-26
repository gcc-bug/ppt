**Objective(3/5) :**

This paper introduces 2QAN, an application-specific compiler designed for efficiently compiling quantum circuits tailored for 2-local qubit Hamiltonian simulation problems onto noisy intermediate-scale quantum (NISQ) computers.

> Quantum simulation is a promising near-term application of quantum computing, but practical realization hinges on efficient compilation to mitigate NISQ device errors.

**Challenge s(3/5):**

Mapping and optimizing these circuits to match the limited qubit connectivity and restricted native gate sets of NISQ devices, introducing significant overhead that impacts circuit fidelity.

**Key Contributions (3/5):**

- Exploiting flexibility to permute Hamiltonian terms for reduced SWAP gates during routing.
- Unifying SWAP and circuit gates to minimize gate count.
- Developing specialized scheduling algorithms for optimizations not achievable with general compilers.

**Noteworthy (2/5):**

While addressing the mapping and optimization of quantum circuits isn't new, 2QAN's approach introduces novel permutation-aware techniques to reduce SWAP count, gate overhead, and circuit depth.

**Results (3/5):**

- 2QAN significantly reduces SWAP count, gate overhead, and circuit depth, surpassing state-of-the-art compilers (e.g., 3.6x fewer SWAPs compared to t|ket and 9.1x fewer compared  to Qiskit).
- Improved compilation overhead translates directly into higher application fidelity.
- Experimental results on IBMQ Montreal showcase 2QAN-compiled circuits achieving superior QAOA performance.