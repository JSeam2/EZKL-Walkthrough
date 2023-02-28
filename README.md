# EZKL Walkthrough
Step by Step EZKL walkthrough. EZKL is a Zero Knowledge Machine Learning library that helps you turn ZK proofs into

## Generate Neural Nets
You will need to generate a sample neural network prior to running the proofs

1. Install python libraries to generate the onnx file `pip install -r requirements.txt`. You might want to run this in a python environment.

2. Run the onnx generation script `python gen.py`. You should see an `input.json` and `network.onnx` files being created.

## EZKL Prover
After generating the neural network and sample inputs, you can start running the prover

In this tutorial, we're focused on providing proofs that can be run on the EVM.

1. [Install EZKL](https://github.com/zkonduit/ezkl)

2. Run `rustup override set nightly`

3. Run `cargo check`

4. Run `cargo build --release`

5. Add the `/target/release` to your PATH so you can call `ezkl` from CLI

6. You can run `ezkl table -M network.onnx` to check if the model can be loaded properly.

6. Run the generate the KZG polynomial commitment `./gen_kzg.sh`. This will create a Structured Reference String (SRS) `kzg.params` in the folder.
You can alternatively find pre-generated SRS in [https://github.com/han0110/halo2-kzg-srs](https://github.com/han0110/halo2-kzg-srs).

**Not Using Aggregation**
7. Generate the proofs `./gen_evm_proof.sh`. This will create a `proof.pf` and `proof.vk` in the folder.

8. Generate the EVM verifier


**Using Aggregation**
7. Generate the initial proofs `./aggregation/gen_evm_proof.sh`. This will create a `proof.pf` and `proof.vk` in the folder.

8. Generate the aggregated proofs `./aggregation/gen_evm_aggr.sh`. This will create a `aggr_proof.pf` and `aggr_proof.vk` in the folder.

8. Generate the EVM verifier `./aggregation/gen_evm_verifier.sh`