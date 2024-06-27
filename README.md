# jupyter-cpp-cling

An OpenShift AI Image running Jupyter Lab for Rust development.
- Based on the [Evcxr project](https://github.com/evcxr/evcxr)
on GitHub for Jupyter Lab Notebook integration.
- Uses Rust 1.79.
- Used by Professor Leonidas Kontothanassis, MassMutual Professor of the
Practice of Computing & Data Sciences + Director of Industry Engagement.

Base image: [quay.io/opendatahub-contrib/workbench-images:jupyter-datascience-c9s-py311_2023c_latest](https://github.com/opendatahub-io-contrib/workbench-images)

| Cargo packages | Description |
| --- | --- |
| evcxr_jupyter | An evaluation context for Rust. |

| System packages | Description |
| --- | --- |
| cargo | Rust's package manager and build tool. |


You can pull the latest [jupyter-rust container image](https://github.com/nerc-images/jupyter-rust/pkgs/container/jupyter-rust) below:

```
podman pull quay.io/nerc-images/jupyter-rust:latest
```

Here is how to build the container image: 

```bash
podman build -t nerc-images/jupyter-rust:latest .
```

Here is how to run the container image: 

```bash
podman run --rm -it --entrypoint /bin/bash nerc-images/jupyter-rust:latest
```
