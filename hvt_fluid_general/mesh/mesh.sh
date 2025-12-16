#!/bin/bash

coreform_cubit -batch -nographics -nojournal geometry.jou
coreform_cubit -batch -nographics -nojournal combined_mesh.jou

exo2nek << EOF 2>&1 | tee log.exo2nek
1
fluid_mesh
0
1
1 2
hvt
EOF

mv hvt.re2 ..