---
title: "Mixing Configurations for Downstream Prediction"
collection: publications
category: conferences
permalink: /publication/2026-icml-mixconfig
excerpt: 'GraMixC: a plug-and-play module that extracts, aligns, and fuses multi-resolution community configurations for downstream prediction.'
date: 2026-07-01
venue: 'International Conference on Machine Learning (ICML 2026)'
paperurl: 'http://JayLon1022.github.io/files/Mixing_Configurations_for_Downstream_Prediction.pdf'
citation: 'Juntang Wang*, <b>Hao Wu</b>*, Yihan Wang*, Dongmian Zou, Shixin Xu. &quot;Mixing Configurations for Downstream Prediction.&quot; <i>International Conference on Machine Learning (ICML 2026)</i>. (*equal contribution)'
---
Humans are born with an ability to group objects by similarity—a cognitive mechanism that clustering seeks to replicate. By community detection at optimal resolution parameters, recent work produces *configurations*—valid hierarchical clusterings at each scale—all without any labels. In this paper, we characterize configurations and identify behaviors similar to them from the register tokens in Vision Transformers. Configurations can be learned via unsupervised or self-supervised processes, but their selection or mixing is downstream task- and input-specific. Compared to register tokens, configurations demonstrate less redundancy and require no ad hoc selection. We propose **GraMixC**, a plug-and-play module that extracts configurations, aligns them with our novel Reverse Merge/Split (RMS) methodology, and fuses them through attention heads before passing them to any downstream predictor. On the DSNI 16S rRNA cultivation task, GraMixC boosts the coefficient of determination from 0.6 to 0.9—establishing a new state of the art. We further validate GraMixC with standard tabular models on other benchmarks, where it consistently outperforms single-resolution and static-feature baselines.

[ICML 2026 poster page](https://icml.cc/virtual/2026/poster/63010)

![Figure 1: GraMixC model architecture](../images/publications/GraMixC/framework.png)

![Figure 2: Regression performance for DSNI prediction task](../images/publications/GraMixC/dsmz_regression.png)

![Figure 3: Ablation study results on DSNI prediction task](../images/publications/GraMixC/dsmz_ablation.png)
