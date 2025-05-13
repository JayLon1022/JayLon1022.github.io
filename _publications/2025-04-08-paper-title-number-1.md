---
title: "LLM-Based Immune Detection Method for Unknown Network Attacks in ICS Under Few-Shot Conditions"
collection: publications
category: conferences
permalink: /publication/2025-04-08-paper-title-number-1
excerpt: ''
date: 2025-04-08
venue: '[ICIC 25] 2025 International Conference on Intelligent Computing'
paperurl: 'http://JayLon1022.github.io/files/LLM-Based_Immune_Detection_Method_for_Unknown_Network_Attacks_in_ICS_Under_Few-Shot_Conditions.pdf'
citation: '<b>Hao Wu</b>, Jiangchuan Chen, Wengang Ma, Ping He, Xiaolong Lan, Tao Li and Junjiang He. &quot;LLM-Based Immune Detection Method for Unknown Network Attacks in ICS Under Few-Shot Conditions.&quot; <i>2025 International Conference on Intelligent Computing (ICIC 2025)</i>. '
---
The rapidly evolving landscape of unknown network attacks has significantly expanded the range of cyber threats. However, existing intrusion detection systems (IDS) primarily rely on large amounts of known attack samples for model training and can only effectively detect known network attacks, particularly in industrial control system (ICS) environments, where obtaining attack samples is extremely difficult.In this paper, inspired by artificial immune systems (AIS) and large language models (LLM),we propose an LLM-basedimmune detection method for identifying unknown network attacks in ICS under few-shot conditions. The artificial immune system, as a biologically inspired intelligent algorithm, inherently possesses the ability to identify unknown threats. Meanwhile, LLM, with its strong reasoning ability, can deeply explore the latent spatial feature information even with limited train samples. Specifically, we first map network attack data to the antigen space of the artificial immune system. Then, we design a specialized prompt template to guide the LLM in learning and analyzing the spatial distribution features of nonself antigens, thereby capturing the latent space feature distribution information. Finally, we generate immune space detectors under the guidance of LLM and activate them through tolerance mechanisms. Extensive experiments on multiple datasets demonstrate that our method exhibits superior performance in detecting both known and unknown cyberattacks, significantly outperforming current mainstream IDS research achievements.

![Figure 1: Proposed model architecture](../images/publications/LLM-Based_Immune/framework.png "Figure 1: Proposed model architecture")

![Figure 2: Prompt design template](../images/publications/LLM-Based_Immune/prompt_design.png "Figure 2: Prompt design template")

![Figure 3:Results of Haberman](../images/publications/LLM-Based_Immune/Haberman_results.png "Figure 3:Results of Haberman")
