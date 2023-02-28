ezkl \
-K=19 \
--bits=16 \
create-evm-verifier-aggr \
--pfsys=kzg \
--deployment-code-path aggr_proof.code \
--params-path=kzg.params \
--vk-path aggr_proof.vk \
--sol-code-path verify.sol