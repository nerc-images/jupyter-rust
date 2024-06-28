FROM quay.io/opendatahub-contrib/workbench-images:jupyter-datascience-c9s-py311_2023c_latest

USER root

ENV \
  RUSTUP_HOME=/usr/local \
  CARGO_HOME=/usr/local
RUN yum install -y \
  cargo
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN cargo install evcxr_jupyter --version 0.14.0
RUN evcxr_jupyter --install
RUN mv /opt/app-root/src/.local/share/jupyter/kernels/rust /opt/app-root/share/jupyter/kernels/rust
RUN rustup component add rust-src


USER 1001
