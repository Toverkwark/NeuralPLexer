#!/bin/bash
neuralplexer-inference --task=batched_structure_sampling \
                       --input-receptor /home/bastiaan_evers/3PB4.pdb \
                       --input-ligand <ligand>.sdf \
                       --use-template  --input-template /home/bastiaan_evers/3BP4.pdb \
                       --out-path /home/bastiaan_evers/results \
                       --model-checkpoint /home/bastiaan_evers/neuralplexermodels_downstream_datasets_predictions/models/complex_structure_prediction.ckpt \
                       --n-samples 16 \
                       --chunk-size 4 \
                       --num-steps=40 \
                       --cuda \
                       --sampler=langevin_simulated_annealing
