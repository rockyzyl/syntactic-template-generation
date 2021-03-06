#!/bin/bash

python train.py \
    --debug 0 \
    --auto_disconnect 1 \
    --save_prefix vgvae-exp \
    --decoder_type lstm_z2y \
    --yencoder_type word_avg \
    --zencoder_type bilstm \
    --n_epoch 20 \
    --train_path train.txt \
    --train_tag_path train.tag \
    --tag_vocab_file word2tag.pkl \
    --embed_file glove.6B.100d.txt \
    --embed_type glove \
    --dev_inp_path dev_input.txt \
    --dev_ref_path dev_ref.txt \
    --test_inp_path test_input.txt \
    --test_ref_path test_ref.txt \
    --pre_train_emb 1 \
    --vocab_file vocab \
    --vocab_size 50000 \
    --batch_size 30 \
    --dropout 0.0 \
    --l2 0.0 \
    --word_replace 0.0 \
    --max_vmf_kl_temp 1e-4 \
    --max_gauss_kl_temp 1e-3 \
    --zmlp_n_layer 2 \
    --ymlp_n_layer 2 \
    --mlp_n_layer 3 \
    --para_logloss_ratio 1.0 \
    --ploss_ratio 1.0 \
    --mlp_hidden_size 100 \
    --ysize 50 \
    --zsize 50 \
    --embed_dim 100 \
    --encoder_size 100 \
    --decoder_size 100 \
    --p_scramble 0.0 \
    --print_every 500 \
    --eval_every 5000 \
    --summarize 1
