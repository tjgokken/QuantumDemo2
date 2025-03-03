# QuantumDemo2

QuantumDemo2 is a quantum computing project that explores foundational quantum concepts like superposition, phase flip, and entanglement using Q#. This project aims to demonstrate the power and peculiarities of quantum operations through simple, educational examples.

## Introduction

Quantum computing defies the norms of classical computing, introducing phenomena like interference and entanglement. Our project leverages Q#, a language designed for expressing quantum algorithms, to manipulate qubits and observe their behavior in simulations.

### Highlights

- **Phase Flip (Z Gate)**: Demonstrates how qubits can "flip" their phase, altering their interference patterns without changing their base state from 0 to 1 or vice versa.
- **Entanglement**: Showcases the "spooky action at a distance" as described by Einstein, where entangled qubits affect each other's state instantaneously, regardless of distance.

## Setup

Ensure you have the .NET Core SDK and the Azure Quantum Development Kit installed. Then, you can clone this repository and navigate into the project directory.

```
git clone https://github.com/tjgokken/QuantumDemo2.git
cd QuantumDemo2
```

## Running the Application

To run QuantumDemo2, use the following command from the terminal in the project directory:

```
dotnet run
```

This will execute the quantum simulations defined in our Q# application, outputting results to the terminal.

## Code Examples

Here are brief overviews of what each operation in our project does:

### ApplyPhaseFlip

```qsharp
operation ApplyPhaseFlip() : Result {
    use qubit = Qubit();
    H(qubit);    // Apply Hadamard gate to put the qubit into superposition
    Z(qubit);    // Apply Phase Flip (Z gate)
    H(qubit);    // Apply Hadamard gate again
    return M(qubit);  // Measure the qubit
}
```

This operation explores how a phase flip affects a qubit in superposition, ultimately influencing the measurement outcome.

### EntangleQubits

```qsharp
operation EntangleQubits() : (Result, Result) {
    use q1 = Qubit();
    use q2 = Qubit();
    H(q1);    // Put q1 into superposition
    CNOT(q1, q2);  // Entangle q1 with q2
    let result1 = M(q1);
    let result2 = M(q2);
    ResetAll([q1, q2]);
    return (result1, result2);
}
```

This operation demonstrates quantum entanglement, where the state of one qubit instantaneously affects another, showcasing correlated outcomes upon measurement.

## Further Reading


- **Blog Series**: [Blog Series tjgokken.com](https://tjgokken.com/series/quantum-computing)

For more insights into quantum computing and the concepts demonstrated in this project, you can explore the following resources:
- [Quantum Computing: An Applied Approach](https://link.to/book)
- [Microsoft's Quantum Development Kit Documentation](https://docs.microsoft.com/quantum/)

## License
This project is licensed under the **MIT License**.

## Contributing
Feel free to submit **pull requests** or report **issues**!

## Connect
📧 **Contact**: [tjgokken.com](https://tjgokken.com)