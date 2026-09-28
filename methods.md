| Feature              | **Bash**                  | **Snakemake**          | **Nextflow**             | **WDL**                   | **CWL**                     |
| -------------------- | ------------------------- | ---------------------- | ------------------------ | ------------------------- | --------------------------- |
| **Pipeline**         | Shell script              | Rules + DAG            | `workflow`               | `workflow`                | `Workflow`                  |
| **Step**             | Command / function        | `rule`                 | `process`                | `task`                    | `CommandLineTool`           |
| **Command**          | Shell command             | `shell`                | `script`                 | `command`                 | `baseCommand` / `arguments` |
| **Input**            | Variables / arguments     | `input:`               | `input:` / channel       | `input`                   | `inputs`                    |
| **Output**           | Files / variables         | `output:`              | `output:` / channel      | `output`                  | `outputs`                   |
| **Connect steps**    | Variables / filenames     | **Files**              | **Channels**             | `task.output`             | `source` / `outputSource`   |
| **Multiple files**   | `*`, `for`                | **Wildcards**          | **Channels**             | `Array[File]` + `scatter` | `File[]` + `scatter`        |
| **File discovery**   | `glob`, `find`            | `glob_wildcards()`     | `channel.fromPath()`     | Usually inputs            | Usually inputs              |
| **Configuration**    | `.env`, variables         | `config.yaml`          | **`nextflow.config`**    | Input JSON                | Input YAML/JSON             |
| **Parameters**       | Variables / arguments     | Config / params        | `params`                 | Workflow inputs           | Workflow inputs             |
| **Containers**       | Docker/Apptainer manually | Integrated             | **Integrated**           | Runtime                   | Requirements                |
| **CPU / memory**     | `sbatch` etc.             | Resources              | `cpus`, `memory`         | `runtime`                 | `ResourceRequirement`       |
| **HPC**              | Manual                    | **Profiles/executors** | **Executors**            | Workflow engine           | Workflow runner             |
| **SLURM**            | `sbatch` / `srun`         | SLURM profile          | `executor = 'slurm'`     | Backend                   | Runner-dependent            |
| **Cloud**            | Manual                    | Profiles/executors     | **Integrated**           | Backend                   | Runner-dependent            |
| **Parallelism**      | `&`, loops, GNU parallel  | DAG/jobs               | **Channels/processes**   | `scatter`                 | `scatter`                   |
| **Caching / resume** | Manual                    | File-based             | **`-resume`**            | Engine-dependent          | Runner-dependent            |
| **DAG**              | ❌                         | **Generated**          | **Generated**            | Explicit                  | Explicit                    |
| **Error handling**   | `set -e`, traps           | Engine                 | Engine                   | Engine                    | Engine                      |
| **Language**         | Shell                     | Python-like            | Groovy / DSL2            | WDL                       | YAML                        |
| **Main abstraction** | **Commands + files**      | **Rules + files**      | **Processes + channels** | **Tasks + workflow**      | **Tools + data**            |
