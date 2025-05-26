# ACSA-HGCN
This code is copy with modification from the code in Aspect-Category based Sentiment Analysis with Hierarchical Graph Convolutional Network [[COLING 2020]](https://www.aclweb.org/anthology/2020.coling-main.72.pdf).

## Requirements
* Python 3.7
* Pytorch 1.5.1

## Running
Modify the corresponding `BERT_BASE_DIR`, `DATA_DIR`, `output_dir`. `DOMAIN` and `YEAR` to run the script.
```
sh run.sh
```

For training with the VLSP 2018 dataset, `DOMAIN` should be either `viethotel` or `vietrestaurant`, `YEAR` should be `2018`.

`BERT_BASE_DIR` should either be the directory to files of a saved model or one the the following:

- `bert-base-uncased`
- `bert-large-uncased`
- `bert-base-cased`
- `bert-large-cased`
- `bert-base-multilingual-uncased`
- `bert-base-multilingual-cased`
- `bert-base-chinese`
- `bert-base-german-cased`
- `bert-large-uncased-whole-word-masking`
- `bert-large-cased-whole-word-masking`
- `bert-large-uncased-whole-word-masking-finetuned-squad`
- `bert-large-cased-whole-word-masking-finetuned-squad`
- `bert-base-cased-finetuned-mrpc`

See [this notebook](https://www.kaggle.com/code/dngchnhtrn/absa-vlsp) for more details on how to run the script.

> Warning: Training on either the hotel or the restaurant dataset would take about 7 hours for with the settings in the notebook on a P100 GPU.

## Trained models and evaluation

Dataset of trained models: [HierGCN VLSP 2018](https://www.kaggle.com/datasets/dngchnhtrn/hiergvn-fold-0).

Notebook for running evaluation: [hiergcn_eval](https://www.kaggle.com/code/dngchnhtrn/hiergcn-eval).


