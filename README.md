# BRegDCAT-AP v2 Deployment

Proof-of-concept Docker deployment for the entire set of BRegDCAT-AP v2 tools. To deploy a stack with the _Creator_, _Editor_, _Mapping tool_ and _Harvester_ run:

```
./deploy.sh
```

This script will basically do the following:

* Create a local directory `./tools`.
* Clone each of the BRegDCAT-AP v2 tools to its own directory under `tools` (e.g. `./tools/editor`).
* Build and run the stack defined in `docker-compose.yml`.

Some considerations regarding configuration:

* You may use the `TREEISH_CREATOR`, `TREEISH_MAPPING`, `TREEISH_EDITOR` or `TREEISH_HARVESTER` environment variables to set the target commit/branch for each tool.
* The Harvester RDF document sources are defined in the `harvester-sources.json` file.