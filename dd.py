import sys
from argparse import ArgumentParser
from pathlib import Path

from cformulae.application import discriminative_discovery

if __name__ == '__main__':
    import warnings
    warnings.filterwarnings("ignore")

    LOG_PATH = "data"
    FORMULAE_PATH = "formulae"

    parser = ArgumentParser()
    parser.add_argument("log", type=str, help="Path to XES log file.")
    parser.add_argument("formulae",type=str)
    parser.add_argument("k",type=int)
    parser.add_argument("-s", "--supp-thresh", type=float, default=0.3)
    parser.add_argument("-m", "--max-card",type=int,default=15)
    parser.add_argument("-o", "--output_file", type=str, help="Output .lp file.")
    args = parser.parse_args()

    log = args.log
    formulae = args.formulae

    truth, symbols = discriminative_discovery(Path(log), formulae, args.supp_thresh, args.max_card, random_labels=(True, args.k))
    if truth:
        if args.output_file is not None:
            out = open(args.output_file, 'w')
        else:
            out = sys.stdout

        for symbol in symbols:
            print(symbol, file=out)
        out.close()
