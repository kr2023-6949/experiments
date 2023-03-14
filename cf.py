import sys
from argparse import ArgumentParser
from cformulae.application import conformance_checking

if __name__ == '__main__':
    import warnings
    warnings.filterwarnings("ignore")

    LOG_PATH = "data"
    FORMULAE_PATH = "formulae"

    parser = ArgumentParser()
    parser.add_argument("log_name", type=str, help="Path to XES log file.")
    parser.add_argument("formulae", type=str, help="Path to .lp file which contains root/1 facts.")
    parser.add_argument("-o", "--output_file", type=str, help="Output .lp file.")
    args = parser.parse_args()

    log = args.log_name
    formulae = args.formulae

    truth, symbols = conformance_checking(log, formulae)
    assert truth

    if args.output_file is not None:
        out = open(args.output_file, 'w')
    else:
        out = sys.stdout

    for symbol in symbols:
        print(str(symbol) + '.', file=out)
    out.close()