from cformulae.parsers import parse_constraint_formula
import sys

if __name__ == '__main__':
    print(parse_constraint_formula(sys.argv[1]))