| Feature              | **Bash**                 | **Snakemake**          | **Nextflow**             | **WDL**                   | **CWL**                     |
| -------------------- | ------------------------ | ---------------------- | ------------------------ | ------------------------- | --------------------------- |
| **Pipeline**         | Shell script             | Rules + DAG            | `workflow`               | `workflow`                | `Workflow`                  |
| **Step**             | Command / function       | `rule`                 | `process`                | `task`                    | `CommandLineTool`           |
| **Command**          | Shell command            | `shell`                | `script`                 | `command`                 | `baseCommand` / `arguments` |
| **Input**            | Variables / args         | `input:`               | `input:` / channel       | `input`                   | `inputs`                    |
| **Output**           | Files / variables        | `output:`              | `output:` / channel      | `output`                  | `outputs`                   |
| **Connect steps**    | Variables / filenames    | **Files**              | **Channels**             | `task.output`             | `source` / `outputSource`   |
| **Multiple files**   | `*`, `for`               | **Wildcards**          | **Channels**             | `Array[File]` + `scatter` | `File[]` + `scatter`        |
| **File discovery**   | `glob`, `find`           | `glob_wildcards()`     | `channel.fromPath()`     | Usually inputs            | Usually inputs              |
| **Config file**      | `.env`, custom file      | **`config.yaml`**      | **`nextflow.config`**    | **Input JSON**            | **Input YAML/JSON**         |
| **Config format**    | Shell syntax / arbitrary | YAML                   | Groovy                   | JSON                      | YAML or JSON                |
| **Parameters**       | Variables / args         | Config / params        | `params`                 | Workflow inputs           | Workflow inputs             |
| **Resources**        | `sbatch` options         | Config / resources     | Config / profiles        | `runtime`                 | `ResourceRequirement`       |
| **Containers**       | Manual commands          | Integrated             | **Integrated**           | Runtime                   | Requirements                |
| **HPC**              | Manual                   | **Profiles/executors** | **Executors**            | Workflow engine           | Workflow runner             |
| **SLURM**            | `sbatch` / `srun`        | SLURM profile          | `executor = 'slurm'`     | Backend                   | Runner-dependent            |
| **Cloud**            | Manual                   | Profiles/executors     | **Integrated**           | Backend                   | Runner-dependent            |
| **Parallelism**      | `&`, loops, GNU parallel | DAG/jobs               | **Channels/processes**   | `scatter`                 | `scatter`                   |
| **Caching / resume** | Manual                   | File-based             | **`-resume`**            | Engine-dependent          | Runner-dependent            |
| **DAG**              | ❌                        | **Generated**          | **Generated**            | Explicit                  | Explicit                    |
| **Language**         | Shell                    | Python-like            | Groovy / DSL2            | WDL                       | YAML                        |
| **Main abstraction** | **Commands + files**     | **Rules + files**      | **Processes + channels** | **Tasks + workflow**      | **Tools + data**            |
