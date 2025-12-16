#!/bin/bash

coreform_cubit -batch -nographics -nojournal geometry.jou
coreform_cubit -batch -nographics -nojournal mesh.jou

exo2nek << EOF 2>&1 | tee log.exo2nek
1
mesh
0
1
1 2
hvt
EOF

mv hvt.re2 ..