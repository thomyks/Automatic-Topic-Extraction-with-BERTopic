# Automatic Topic Extraction with BERTopic  
### A Two-Step Clustering Approach for Hierarchical Topic Knowledge Interpretation (ArXiv Dataset)

Welcome to **Automatic Topic Extraction with BERTopic**, a project designed to extract, label, and organize topics from large-scale text datasets using a two-step clustering approach. This method also offers a solution for hierarchical topic interpretation, leveraging the power of **Large Language Models (LLMs)**.

---

## 🚀 Key Features

- **Two-Step Clustering**: Sequentially combines **HDBSCAN** and **K-Means** to improve topic extraction and outlier handling.
- - **Human-Readable Labels**: Uses **LLMs** (GPT-4, Llama-70B) to generate descriptive, easy-to-interpret labels for each topic.
- **Hierarchical Topic Structure**: Organizes topics into three levels of granularity, enabling meaningful topic discovery in different topic granularity levels.
- **Comprehensive Evaluation**: Evaluates the quality of extracted topics using **Topic Coherence (c_v)**, **Topic Diversity**, and **Cosine Similarity Matrices**.
- **Visualization**: Offers multiple ways to visualize the extracted topics and hierarchies using **Wizmap**, **DataMapPlot**, **Sunburst Chart** and  **Tree Map**.

---

## 📚 Method Overview

This project follows a **six-step process** to ensure topic knowledge extraction and interpretation:

### 1. **Discover: Topic Clusters Extraction**  
   - **Input**: Text Corpus
   - **Methods**: Step One (sentence-transformers, UMAP, HBDSCAN, KeyBERT) Step Two (sentence-transformers, K-Means, KeyBERT)
   - **Output**: Structured Topic Clusters  
   - **Key Characteristics**: 
     - Fast and scalable for large datasets
     - Effectively handles outliers 

### 2. **Label: Human-Readable Topic Labels Generation**  
   - **Input**: Topic Clusters, Naive Label (keywords-based), Keywords, Documents  
   - **Methods**: LLMs (GPT-40, Llama-70B)  
   - **Output**: Human-readable Topic Cluster Labels  
   - **Key Characteristics**: 
     - Utilizes advanced LLMs to generate descriptive and meaningful labels
     - Provides fast interpretation for large datasets

### 3. **Classify: Three-Level Hierarchical Topic Structure**  
   - **Input**: Topic labels from both Step One and Step Two  
   - **Methods**: sentence-transformers, WARD method + LLMs  
   - **Output**: Dendrogram with a Three-level Hierarchy of Topic Labels  
   - **Key Characteristics**: 
     - Merges Subtopics into Topics and Topics into Supertopics
     - Multi-level hierarchy that allows Multi-Granular Topic Access

### 4. **Label: Hierarchical Labels for Level Two and Level Three**  
   - **Input**: Topic Labels from Step One and Step Two  
   - **Methods**: LLMs (Llama-70B)  
   - **Output**: Short, meaningful descriptions for each level of the hierarchy  
   - **Key Characteristics**: 
     - Ensures consistency in labels across all hierarchical levels
     - Provides interpretation on the higher topic granularity

### 5. **Evaluate Three-Level Hierarchical Topic Knowledge Evaluation and Automated Labeling**
   - **Input**: Level One (Results from Step One and Step Two), Level Two, Level Three
   - **Methods**: Topic Coherence (c_v) and Topic Diversity for Three-Level Hierarchical Topic Knowledge, Cosine and Euclidean Similarity Matrices for Automated Labeling
   - **Output**: Evaluation metrics (scores between 0–1)  
   - **Key Characteristics**: 
     - Quantifies coherence and diversity across different hierarchical levels
     - Measures consistency between LLM-generated topic cluster labels and topic centroids

### 6. **Visualize: Explore Documents and Topics through Visualisation**  
   - **Input**: Results from Step One, Step Two, and Hierarchical Levels  
   - **Methods**: Wizmap, DataMapPlot, Sunburst Chart, Tree Map  
   - **Output**: Interactive visual representations of topic clusters and hierarchies  
   - **Key Characteristics**:
     - **Wizmap**: Interactive Visualization of Document Embeddings that Allows you to zoom in on a specific document.
     - **DataMapPlot**: Interactive visualization of document embeddings and topic clusters, offering an intuitive view of the data space.
     - **Sunburst Chart**: Circular, Three-level hierarchical Chart representing Subtopics, Topics and Supertopics, enabling easy navigation between broader topics and their more
     specific counterparts.
     - **Tree Map**: A hierarchical visualization tool representing topics and subtopics as nested rectangles. Each rectangle's size is proportional to the topic's importance or frequency, allowing users to see the relationship between broader topics and their specific counterparts.


    
