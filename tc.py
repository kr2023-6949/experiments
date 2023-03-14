import os
import sys
from time import time

from argparse import ArgumentParser
from cformulae.application import trace_clustering

if __name__ == '__main__':
    import warnings
    warnings.filterwarnings("ignore")
    print(sys.argv)
    LOG_PATH = "data"
    FORMULAE_PATH = "formulae"

    parser = ArgumentParser()
    parser.add_argument("log_name", type=str, help="Path to XES log file.")
    parser.add_argument("formulae",type=str)
    parser.add_argument("k",type=int)
    parser.add_argument("-l", "--max-card",type=int,default=15)
    parser.add_argument("-o", "--output_file", type=str, help="Output .lp file.")

    args = parser.parse_args()

    log = args.log_name
    formulae = args.formulae

    truth, symbols = trace_clustering(log, formulae,args.k,args.max_card)
    if truth:
        if args.output_file is not None:
            out = open(args.output_file, 'w')
        else:
            out = sys.stdout

        for symbol in symbols:
            print(symbol, file=out)
        out.close()
