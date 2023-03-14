import pandas as pd
import glob
import os
import matplotlib.pyplot as plt
from matplotlib import rcParams
import seaborn as sns
from matplotlib import rcParams


def del_gnu_parallel_columns(df):
    # Seq,Host,Starttime,JobRuntime,Send,Receive,Exitval,Signal,Command,V1,V2,Stdout,Stderr
    to_delete = [
        'Seq', 'Host', 'Starttime', 'Send', 'Receive', 'Exitval', 'Signal', 'Command', 'Stdout', 'Stderr'
    ]
    for col in to_delete:
        del df[col]
    return df


def read_and_concat(files):
    frames = [pd.read_csv(x) for x in files]
    frame = pd.concat(frames, axis=0, ignore_index=True)
    return del_gnu_parallel_columns(frame)


def conformance_checking_data(root='joblogs'):
    J = read_and_concat(glob.glob(os.path.join(root, 'cf_*.csv')))

    def split_args(arg):
        filename = arg.split('/')[-1]
        args = filename.split('.',1)[0]
        n, k, idx = [int(x) for x in args.split('_')[1:]]

        return n, k, idx

    J['Number Formulae'], J['d'], J['Split Exec ID'] = zip(*J['V1'].map(split_args))
    del J['V1']

    return J


def trace_clustering_data(root='joblogs'):
    J = read_and_concat(glob.glob(os.path.join(root, 'tc_*.csv')))

    def split_args(arg):
        filename = arg.split('/')[-1]
        args = filename.split('.',1)[0]
        n, depth, idx = [int(x) for x in args.split('_')[1:]]

        return n, depth, idx

    J['Number Formulae'], J['d'], J['Split Exec ID'] = zip(*J['V1'].map(split_args))
    J['k'] = J['V2']

    del J['V1']
    del J['V2']

    return J

def discriminative_discovery_data(root='joblogs'):
    J = read_and_concat(glob.glob(os.path.join(root, 'dd_*.csv')))

    def split_args(arg):
        filename = arg.split('/')[-1]
        args = filename.split('.',1)[0]
        n, depth, idx = [int(x) for x in args.split('_')[1:]]

        return n, depth, idx

    J['Number Formulae'], J['d'], J['Split Exec ID'] = zip(*J['V1'].map(split_args))
    J['k'] = J['V2']

    del J['V1']
    del J['V2']

    return J



def query_checking_data(root='joblogs'):
    J = read_and_concat(glob.glob(os.path.join(root, 'qc_*.csv')))

    def split_args(arg):
        filename = arg.split('/')[-1]
        args = filename.split('.',1)[0]
        n, k, idx = [int(x) for x in args.split('_')[1:]]

        return n, k, idx

    J['Number of variables'], J['D'], J['Split Exec ID'] = zip(*J['V1'].map(split_args))
    del J['V1']

    return J


if __name__ == '__main__':
    rcParams['figure.figsize'] = (12, 6)
    plot_folder = 'figures'

    cf_df = conformance_checking_data()
    tc_df = trace_clustering_data()
    dd_df = discriminative_discovery_data()
    qc_df = query_checking_data()

    print("Conformance Checking Columns:", cf_df.columns)
    print("Trace Clustering Columns:", tc_df.columns)
    print("Discriminative Discovery Columns:", dd_df.columns)
    print("Query Checking Columns:", qc_df.columns)

    sns.set_style('whitegrid')
    sns.set_context('paper', font_scale=2.0)

    ### Conformance Checking
    axes = sns.lineplot(data=cf_df, x='Number Formulae', y='JobRuntime', hue='d', estimator='mean', errorbar=('ci', 95), linewidth=2.0, palette='pastel')
    axes.set(
        xlabel="Number of Formulae",
        ylabel="Average runtime(s)",
        xlim=(10,80),
        ylim=(0,60),
    )
    plt.savefig(os.path.join(plot_folder, 'cf_1.png'))
    plt.clf()

    ### Trace Clustering
    axes = sns.lineplot(data=tc_df, x='Number Formulae', y='JobRuntime', style='k', hue='d', estimator='mean', errorbar=('ci', 95), linewidth=2.0, palette='pastel')
    axes.set(
        xlabel="Number of Formulae",
        ylabel="Average runtime(s)",
        xlim=(10,80),
        ylim=(0,50),
    )
    plt.savefig(os.path.join(plot_folder, 'tc_1.png'))
    plt.clf()

    ### Discriminative Discovery
    axes = sns.lineplot(data=dd_df, x='Number Formulae', y='JobRuntime', style='k', hue='d', estimator='mean', errorbar=('ci', 95), linewidth=2.0, palette='pastel')
    axes.set(
        xlabel="Number of Formulae",
        ylabel="Average runtime(s)",
        xlim=(10,80),
        ylim=(0,40),
    )
    plt.savefig(os.path.join(plot_folder, 'dd_1.png'))
    plt.clf()

    ### Query Checking
    axes = sns.lineplot(data=qc_df, x='Number of variables', y='JobRuntime', hue='D', estimator='mean', errorbar=('ci', 95), linewidth=2.0, palette='pastel')
    axes.set(
        xlabel="Number of variables",
        ylabel="Average runtime(s)",
        xlim=(1,4),
        yscale='log'
    )
    plt.savefig(os.path.join(plot_folder, 'qc_1.png'))
    plt.clf()
