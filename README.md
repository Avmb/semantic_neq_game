# Program inequivalence game with Large Language Models

### Antonio Valerio Miceli-Barone, Vaishak Belle, Ali Payani

## Abstract

Large Language Models (LLMs) can achieve strong performance on everyday coding tasks, but they can fail on complex tasks that require non-trivial reasoning about program semantics.
Finding training examples to teach LLMs to solve these tasks can be challenging.

In this work, we explore a method to synthetically generate code reasoning training data based on a **semantic inequivalence game** **SInQ**: a **generator** agent creates program variants that are semantically distinct, derived from a dataset of real-world programming tasks, while an **evaluator** agent has to identify input examples that cause the original programs and the generated variants to diverge in their behaviour, with the agents training each other semi-adversarially. We prove that this setup enables theoretically unlimited improvement through self-play in the limit of infinite computational resources.

We evaluated our approach on multiple code generation and understanding benchmarks, including cross-language **vulnerability detection** ([Lu et al., 2021](https://arxiv.org/abs/2102.04664)), where our method improves vulnerability detection in C/C++ code despite being trained exclusively on Python code, and the challenging **Python builtin identifier swap** benchmark ([Miceli-Barone et al., 2023](https://aclanthology.org/2023.findings-acl.19/)), showing that whereas modern LLMs still struggle with this benchmark, our approach yields substantial improvements.

## Release

Data generated during self-play is contained in the sqlite database `main.sqlite` and in the compressed archive `jsonl_data.tar.bz2`. Finetuning data for the models is available in the `finetuning_data_for*` directories.
Code is provided in the Jupyter notebooks.


