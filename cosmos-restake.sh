#!/bin/bash
password=
cli=
valoper_address=
name_wallet=
chain=
address=
while :; do
	echo $password | $cli tx distribution withdraw-rewards $valoper_address --from $name_wallet --commission --chain-id=$chain -y
	sleep 20s
	Available=$($cli query bank balances $address --output json | jq -r '.balances | map(select(.denom == "unibi")) | .[].amount' | tr -cd [:digit:])
	Fees=100000
	Amount=$(($Available - $Fees))
	Amount_final=$Amount"unibi"
	echo $password | $cli tx staking delegate $valoper_address $Amount_final --from $name_wallet --chain-id=$chain -y
	date
	sleep 300s
done
