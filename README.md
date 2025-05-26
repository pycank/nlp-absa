# Aspect-Based Sentiment Analysis in Vietnamese Using VLSP 2018 - Group 6

## Overview
This project focuses on **Aspect-Based Sentiment Analysis (ABSA)** for Vietnamese hotel and restaurant reviews, leveraging the **VLSP 2018 dataset**. The goal is to predict sentiments for specific aspect categories (e.g., "cleanliness", "service quality") and provide actionable insights for businesses in the Vietnamese market.

We explore and evaluate multiple approaches, including:
- **PhoBERT-BiLSTM Single-task**
- **PhoBERT-Multi-task**
- **PhoBART-Generation**
- **Hierarchical Graph Convolutional Network (Hier-GCN)**

This project is part of the **Web Mining course at Hanoi University of Science and Technology**.

## Key Features
- **Aspect Detection**: Identifies service aspects in reviews (e.g., `ROOMS#COMFORT`).
- **Sentiment Classification**: Classifies sentiments for each aspect as **Positive**, **Negative**, or **Neutral**.
- **Advanced NLP Models**:
  - Pretrained Vietnamese language models such as **PhoBERT** and **BARTPho**.
  - **Hierarchical Graph Convolutional Network** for modeling inter-category and category-sentiment relationships.
- **Dataset**: Utilizes the **VLSP 2018 dataset**, containing annotated hotel and restaurant reviews in Vietnamese.

## Models and Methods
### 1. PhoBERT-BiLSTM Single-task
- Combines **PhoBERT embeddings** with a **BiLSTM-CNN architecture**.
- Optimized using **Focal Loss** and **Cross-Entropy Loss**.
- Implements separate models for aspect detection and sentiment classification.

### 2. PhoBERT-Multi-task
- Employs **Multitask Learning (MTL)** to simultaneously predict sentiments for multiple aspects.
- Uses a shared representation of contextual embeddings from **PhoBERT**.

### 3. PhoBART-Generation
- Treats ABSA as a **text generation task** using **BARTPho**.
- Outputs natural language sentences, e.g., "The sentiment polarity of `ROOMS#COMFORT` is Positive".
- Highly adaptable to new domains and unseen aspect categories.

### 4. Hier-GCN
- Models ABSA as a **hierarchical prediction task**.
- Captures relationships between categories and sentiments using **graph convolutional layers**.

## Installation

### Prerequisites
- **Python** 3.8+
- **PyTorch**
- **Hugging Face Transformers**
- Additional libraries:
  - TensorFlow
  - scikit-learn
  - PyVnCoreNLP
