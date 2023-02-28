ezkl \
-K=19 \
--bits=16 \
--public-inputs \
prove \
--pfsys=kzg \
--transcript=poseidon \
--strategy=accum \
-D ./input.json \
-M ./network.onnx \
--proof-path proof.pf \
--params-path=kzg.params \
--vk-path=proof.vk
