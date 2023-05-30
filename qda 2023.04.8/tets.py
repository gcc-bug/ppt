import re
from pylatexenc.latex2text import LatexNodes2Text
from pylatexenc import latexwalker
from pylatexenc.latex2text import g_lexer, g_parser

def extract_nouns_from_latex(latex_file):
    with open(latex_file, 'r') as f:
        latex_text = f.read()

    # convert latex to plain text
    plain_text = LatexNodes2Text().latex_to_text(latex_text)

    # extract all words from plain text
    words = re.findall(r'\b\w+\b', plain_text)

    # extract all nouns
    nouns = []
    for word in words:
        try:
            # check if the word is a noun
            if latexwalker.LatexWalker(g_lexer.tokenize(word)).get_latex_nodes()[0].isNodeType(latexwalker.LatexCharsNode):
                nouns.append(word)
        except:
            pass

    # remove duplicates
    nouns = list(set(nouns))

    return nouns
nouns = extract_nouns_from_latex('compiler.tex')
print(1)
print(nouns)