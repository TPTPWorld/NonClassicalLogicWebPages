import itertools
import argparse
import logging
import sys
from pathlib import Path
from collections.abc import Iterable

logging.basicConfig(level=logging.NOTSET)
default_template = \
"""thf({id},logic,(
    $modal == [ 
        $constants == {constants},
        $quantification == {quantification},
        $consequence == {consequence},
        $modalities == {modalities}
]))."""
all_constants = (
    "$rigid",
    "$flexible",
)
all_quantification = (
    "$constant",
    "$varying",
    "$cumulative",
    "$decreasing",
)
all_consequence = (
    "$local",
    "$global",
)
all_modalities = (
    "$modal_system_K",
    "$modal_system_T",
    "$modal_system_D",
    "$modal_system_S4",
    "$modal_system_S5",
)

def createSemantics(template:str=default_template, constants:Iterable[str]=all_constants, quantification:Iterable[str]=all_quantification, consequence:Iterable[str]=all_consequence, modalities:Iterable[str]=all_modalities):
    ret = []
    for element in itertools.product(constants, quantification, consequence, modalities):
        id = element[0].replace("$","") + "_" + element[1].replace("$","") + "_" + element[2].replace("$","") + "_" + element[3].replace("$","")
        semantics = template.format(id=id, constants=element[0], quantification=element[1], consequence=element[2], modalities=element[3])
        ret.append((id, semantics, ))
    return ret

def writeProblem(problemPath:Path, relativeProblemPath:Path, outDir:Path, constants:Iterable[str]=all_constants, quantification:Iterable[str]=all_quantification, consequence:Iterable[str]=all_consequence, modalities:Iterable[str]=all_modalities):
    semantics = createSemantics(constants=constants, quantification=quantification, consequence=consequence, modalities=modalities)
    writeBasePath = (outDir / relativeProblemPath).parent
    problem = problemPath.read_text()
    for s in semantics: # s[0] is the id of the logic statement, s[1] the problem filename
        writePath = writeBasePath / (relativeProblemPath.stem + "_" + s[0] + ".p")
        writePath.parent.mkdir(parents=True, exist_ok=True)
        writePath.write_text(s[1] + "\n\n" + problem)

def writeDirectory(inDir:Path, outDir:Path, constants:Iterable[str]=all_constants, quantification:Iterable[str]=all_quantification, consequence:Iterable[str]=all_consequence, modalities:Iterable[str]=all_modalities):
    for p in inDir.rglob("*.p"):
        writeProblem(problemPath=p, relativeProblemPath=p.relative_to(inDir), outDir=outDir, constants=constants, quantification=quantification, consequence=consequence, modalities=modalities)

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("inPath", help="input path (file or directory)")
    parser.add_argument("outPath", help="output path (file if inPath is a file and only on semantics specification is chosen. Otherwise directory)")
    parser.add_argument("--constants", help="comma-separated values for constants")
    parser.add_argument("--quantification", help="comma-separated values for quantification")
    parser.add_argument("--consequence", help="comma-separated values for consequence")
    parser.add_argument("--modalities", help="comma-separated values for modalities")
    args = parser.parse_args()
    return args

def main():
    args = parse_args()
    inPath = Path(args.inPath)
    outPath = Path(args.outPath)
    constants = all_constants
    quantification = all_quantification
    consequence = all_consequence
    modalities = all_modalities
    if args.constants:
        constants = args.constants.split(",")
        if len(constants) < 1:
            logging.error("Too few constants options: \"" + args.constants + "\"")
            sys.exit(1)
    if args.quantification:
        quantification = args.quantification.split(",")
        if len(quantification) < 1:
            logging.error("Too few quantification options: \"" + args.quantification + "\"")
            sys.exit(1)
    if args.consequence:
        consequence = args.consequence.split(",")
        if len(consequence) < 1:
            logging.error("Too few consequence options: \"" + args.consequence + "\"")
            sys.exit(1)
    if args.modalities:
        modalities = args.modalities.split(",")
        if len(modalities) < 1:
            logging.error("Too few modalities options: \"" + args.modalities + "\"")
            sys.exit(1)
    logging.info("Semantics:")
    logging.info("Constants: " + str(constants))
    logging.info("Quantification: " + str(quantification))
    logging.info("Consequence: " + str(consequence))
    logging.info("Modalities: " + str(modalities))
    # input: one file
    # output: one file (one semantic)
    if inPath.is_file() and len(constants) == 1 and len(quantification) == 1 and len(consequence) == 1 and len(modalities) == 1:
        logging.info("Processing one file: " + str(inPath) + " with one semantics specification.")
        semantics = createSemantics(constants=constants, quantification=quantification, consequence=consequence, modalities=modalities)
        problem = inPath.read_text()
        outPath.write_text(semantics[0][1] + "\n\n" + problem)
    # input one file
    # output: multiple files (multiple semantics
    elif inPath.is_file() and (len(constants) > 1 or len(quantification) > 1 or len(consequence) > 1 or len(modalities) > 1):
        logging.info("Processing one file: " + str(inPath) + " with multiple semantics specification.")
        writeProblem(problemPath=inPath, relativeProblemPath=Path(inPath.name), outDir=outPath, constants=constants, quantification=quantification, consequence=consequence, modalities=modalities)
    # input: directory
    # output: directory
    elif inPath.is_dir():
        logging.info("Processing directory " + str(inPath) + ".")
        writeDirectory(inDir=inPath, outDir=outPath, constants=constants, quantification=quantification, consequence=consequence, modalities=modalities)
    else:
        logging.error("Oops, something went wrong.")
        sys.exit(1)

if __name__ == "__main__":
    main()
