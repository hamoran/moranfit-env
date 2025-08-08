# moranfit-env

Containerized environment for MoranFit Code

To install on Grace, run

```commandline
module load WebProxy
username="$(whoami)"
export SINGULARITY_CACHEDIR="/scratch/user/$username/.singularity/cache"
singularity pull docker://ghcr.io/hamoran/moranfit-env:latest
```
