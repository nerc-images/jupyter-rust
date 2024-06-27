FROM quay.io/opendatahub-contrib/workbench-images:jupyter-datascience-c9s-py311_2023c_latest

USER root

ENV \
  RUSTUP_HOME=/usr/local \
  CARGO_HOME=/usr/local
RUN yum install -y \
  cargo
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN cargo install evcxr_jupyter --version 0.14.0 --root ~/.local
RUN evcxr_jupyter --install

USER 1001
