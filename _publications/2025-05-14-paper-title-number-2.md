---
title: "Mixing Configurations for Downstream Prediction"
collection: publications
category: conferences
permalink: /publication/2025-05-14-paper-title-number-2
excerpt: ''
date: 2025-05-14
venue: '[Proceeding, TBD] 2025 Conference and Workshop on Neural Information Processing Systems (NeurIPS 2025)'
paperurl: 'http://JayLon1022.github.io/files/Mixing_Configurations_for_Downstream_Prediction.pdf'
citation: '[TBD] Juntang Wang, <b>Hao Wu</b>, Runkun Guo, Yihan Wang, Dongmian Zou, Shixin Xu (2025). &quot;Mixing Configurations for Downstream Prediction.&quot; <i>2025 Conference and Workshop on Neural Information Processing Systems (NeurIPS 2025)</i>. 1(1).'
---

Humans are born with an ability to group objects by similarity—a cognitive mechanism that clustering seeks to replicate.
By community detection at optimal resolution parameters, recent work produces configurations—valid hierarchical clustering at each scale—all without any labels.
In this paper, we characterize configurations, and identify behaviors similar to them from the register tokens in Vision Transformers.
Configurations can be learned via unsupervised or self-supervised processes, but their selection or mixing is downstream task- and input-specific;
Compared to register tokens, configurations demonstrate less redundancy and require no ad hoc selection.
Utilizing these properties, we propose GraMixC, a plug-and-play module that extracts configurations, align them with our novel Reverse Merge/Split (RMS) methodology, and fuse them through attention heads, before passed back for any downstream predictor.
On the DSNI 16S rRNA cultivation task, GraMixC boosts coefficient of determination from 0.6 to 0.9—establishing a new state of the art.
We further validate GraMixC with standard tabular models on other benchmarks, where it consistently outperforms single-resolution and static-feature baselines.

![Figure 1: GraMixC model architecture](../images/publications/framework.png)

![Figure 2: Regression performance for DSNI prediction task](../images/publications/dsmz_regression.png)

![Figure 3: Ablation study results on DSNI prediction task](../images/publications/dsmz_ablation.png)
