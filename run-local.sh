make -C evmos install
rm -rf ~/.evmosd
evmosd init test --chain-id=evmos_9000-4
evmosd keys add test_key --keyring-backend=os
evmosd add-genesis-account test_key 1000000000000000000000stake --chain-id=evmos_9000-4 --keyring-backend=os
evmosd gentx test_key 1000000000000000000000stake --chain-id=evmos_9000-4 --moniker=localtestnet --keyring-backend=os
evmosd collect-gentxs
evmosd validate-genesis
evmosd start