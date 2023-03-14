## Requirements
The requirements to run the experiments are listed in the `requirements.txt` file. Currently, you need to install `Declare4Py` separately - you can follow the package mantainers' instructions at [this page](https://github.com/francxx96/declare4py). Or if you trust me:

```commandline
git clone --recurse-submodules https://github.com/kr2023-6949/experiments.git && cd experiments
python3.10 -m venv venv
source venv/bin/activate
pip3 install declare4py/dist/declare4py-1.0.0.tar.gz
pip3 install -r requirements.txt
```

## Data Generation
Details (code) about data generation are available in the `cformule.dataset_generation.generate_cformulae` Python package. By running this script:

```commandline
python3.10 generate_data.py data/sepsis.xes data/
```

all necessary formulae to repeat the experiments is generated. 

`cf_*.lp` files are needed to run the conformance checking, trace clustering and discriminative discovery experiments, while the `qc_*.lp` files are needed for the query checking experiment. 

*The ones used in the paper's experimental section are already in the folder.*


## ASP Encodings
The ASP encodings are stored in the `cformulae/application/encodings` folder. Facts are injected at runtime when input log gets parsed, and are executed through the `clingo` Python API. For further details check `conformance_checking`, `query_checking`, `trace_clustering`, `discriminative_discovery` functions in the `cformulae.application` subpackage.

The procedures to evaluate constraints' via `clingo`'s `@`-terms are defined in the `LogContext` class in the `cformulae.backend.template_backend` Python module. The experiments were performed using only Declare-based templates (for ease of generation), these are automatically loaded.

The collection of available Declare constraints (and their POSIX's `re` definition) can be found in the `cformulae/backend/declare/minerful_templates.txt` file.

## Running the experiments
In order to run the experiments in the paper, you can use the following example scripts. The defaults for optional arguments are the configurations used in the paper.

### Conformance checking
```commandline
python3.10 cf.py data/sepsis.xes formulae.lp -o formulae.lp.output
```
This runs the conformance checking task on the `sepsis.xes` log, using the formulae defined in `formulae.lp` file. Call with `-h` flag to check optional arguments.

### Query checking
```commandline
python3.10 qc.py data/sepsis.xes formulae.lp -o formulae.lp.output
```
This runs the query checking task on the `sepsis.xes` log, using the non-ground formulae and variable domains defined in `formulae.lp` file. Call with `-h` flag to check optional arguments.

### Trace clustering
```commandline
python3.10 tc.py data/sepsis.xes formulae.lp.output [num_partitions]
```

This runs the trace clustering task on the `sepsis.xes` log, where `formulae.lp.output` is the output of `cf.py` on the `formulae.lp` set of formulae (on the same `sepsis.xes` log). Call with `-h` flag to check optional arguments.

*Warnings about `rejects/2` (`accepts/2`) not appearing in the head of any rule are due to the fact that the formulae in `formulae.lp` do not reject (accept) any control-flow variable in the log `sepsis.xes`.*

### Discriminative discovery
```commandline
python3.10 tc.py data/sepsis.xes formulae.lp.output [num_partitions]
```

This runs the discriminative discovery task on the `sepsis.xes` log, where `formulae.lp.output` is the output of `cf.py` on the `formulae.lp` set of formulae (on the same `sepsis.xes` log). Call with `-h` flag to check optional arguments.
*This is only a proof-of-concept and randomly generates labels for the traces in the log.* 

*Warnings about `rejects/2` (`accepts/2`) not appearing in the head of any rule are due to the fact that the formulae in `formulae.lp` do not reject (accept) any control-flow variable in the log `sepsis.xes`.*

## Parallel Execution w/ GNU Parallel

The following scripts can be used to run the tasks in parallel using GNU Parallel:

```commandline
parallel -j T --progress --results joblogs/cf_X.csv python3.10 cf.py data/sepsis.xes {1} ">" {1}.output ::: $(ls data/formulae_X/cf_*.lp)
parallel -j T --progress --results joblogs/dd_X.csv python3.10 dd.py data/sepsis.xes {1} {2} ::: $(ls data/formulae_X/cf_*.lp.output) ::: 2 4 6
parallel -j T --progress --results joblogs/tc_X.csv python3.10 tc.py data/sepsis.xes {1} {2} ::: $(ls data/formulae_X/cf_*.lp.output) ::: 2 4 6
parallel -j T --progress --results joblogs/qc_X.csv python3.10 qc.py data/sepsis.xes {1} ::: $(ls data/formulae_X/qc_*.lp)
```
where `T` is the number of jobs to be computed in parallel and `X = 1 ... 6` select a subset of the formulae in the `data/` folder. The `figures.py` script generates the plots - this requires some extra libraries like `matplotlib`, `pandas` and `seaborn`. The folder `joblogs` contains the output of the executions used in the paper.
