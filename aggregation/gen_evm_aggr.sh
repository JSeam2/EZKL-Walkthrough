ezkl \
-K=19 \
--bits=16 \
--public-inputs \
aggregate \
--transcript=evm \
-M ./network.onnx \
--pfsys=kzg \
--aggregation-snarks proof.pf \
--aggregation-vk-paths proof.vk \
--vk-path aggr_proof.vk \
--proof-path aggr_proof.pf \
--params-path=kzg.params
