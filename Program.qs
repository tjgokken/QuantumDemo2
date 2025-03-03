namespace QuantumDemo2 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    

    // Operation to create entangled qubits (Bell Pair)
    operation EntangleQubits() : (Result, Result) {
        use q1 = Qubit();
        use q2 = Qubit();
        H(q1); // Put q1 into superposition using Hadamard gate
        CNOT(q1, q2); // Entangle q1 with q2
        let result1 = M(q1);
        let result2 = M(q2);
        ResetAll([q1, q2]);
        return (result1, result2);
    }

    // Operation to apply a phase flip
    operation ApplyPhaseFlip() : Result {
        use qubit = Qubit();
        H(qubit);
        Z(qubit);
        H(qubit);
        let result = M(qubit);
        Reset(qubit);
        return result;
    }

    // EntryPoint
    @EntryPoint()
    operation Main() : Unit {
        let entangledResults = EntangleQubits();
        Message($"Entangled results: {entangledResults}");

        let phaseFlipResult = ApplyPhaseFlip();
        Message($"Phase flip result: {phaseFlipResult}");
    }
}

