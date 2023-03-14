import os
import sys
import time

from argparse import ArgumentParser
from cformulae.application import query_checking

if __name__ == '__main__':
    import warnings
    warnings.filterwarnings("ignore")
    LOG_PATH = "data"
    FORMULAE_PATH = "formulae"

    parser = ArgumentParser()
    parser.add_argument("log_name", type=str, help="Path to XES log file.")
    parser.add_argument("formula",type=str)
    parser.add_argument("-s", "--supp-thresh", type=float, default=1.0)
    parser.add_argument("-o", "--output_file", type=str, help="Output .lp file.")

    args = parser.parse_args()

    log = args.log_name
    formulae = args.formula

    truth, symbols = query_checking(log, formulae, args.supp_thresh, logging=False)
    assert truth

    if args.output_file is not None:
        out = open(args.output_file, 'w')
    else:
        out = sys.stdout

    for symbol in symbols:
        print(symbol, file=out)
    out.close()
