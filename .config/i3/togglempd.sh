#!/bin/bash
for i in $(mpc --format ""); do
    a=$i
    break
done
if [$a = "[playing]"; then
    mpc pause
else
    mpc play
fi
