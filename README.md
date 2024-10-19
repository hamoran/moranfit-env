# reinvent-env

Containerized environment for Reinvent

To install on Grace, run

```commandline
module load WebProxy
username="$(whoami)"
export SINGULARITY_CACHEDIR="/scratch/user/$username/.singularity/cache"
singularity pull docker://ghcr.io/tabor-research-group/reinvent-env:latest
```