#!/usr/bin/env python
# coding=UTF-8
# Make custom replacements in files.
#
# The first argument is the directory.
#
# Kevin Davies, 5/30/2012

import re
import glob
import sys
import os

## Settings

# Replacement pairs
rpls = [# Et al., not et. al
        (r'([Ee]t)\.?( al)\.?\\?([ ,;:)-])', r'\1\2.\3'),
        # Two spaces between sentences
        #(r'\. ([A-Z])', r'.  \1'),
        # Terminate periods properly.
        (r'([(p ]p\.) ', r'\1~'),
        (r'([Ee]\.g\.) ', r'\1\ '),
        (r'([Ii]\.e\.) ', r'\1\ '),
        (r'([Ee]t al\.) ([^ ])', r'\1\ \2'),
        (r'([( ][Ee]tc\.) ([^ ])', r'\1\ \2'),
        (r'([( \n-][Mm]isc\.) ([^ ])', r'\1\ \2'),
        (r'([( \n-][Vv]s\.) ([^ ])', r'\1\ \2'),
        # When sentence ends with a capital letter, set the spacing properly.
        (r'([A-Z])(\.  )', r'\1\@\2'),
        # Remove some abbreviations.
        ('b/w', 'between'),
        (r'([ \n(-][Ss])\.t\.\\?', r'\1uch that'),
        (r'([ \n(-][Ww])\.r\.t\.\\?', r'\1ith respect to'),
        (r'([ \n(-][Ss]ec)\.\\?', r'\1tion'),
        (r'([ \n(-][Ff]ig)\.\\?', r'\1ure'),
        (r'([ \n(-][Ee]q)\.\\?', r'\1uation'),
        (r'([ \n(-][Cc]h)\.\\?', r'\1apter'),
        (r'=> *', r'therefore '),
        # Use non-breaking spaces where appropriate.
        # See http://tex.stackexchange.com/questions/15547/when-should-i-use-non-breaking-space
        (r'([( \n-][Cc]hapters) +([\\0-9])', r'\1~\2'),
        (r'([( \n-][Ee]quations) +([0-9])', r'\1~\2'),
        (r'([( \n-][Ff]igures) +([\\0-9])', r'\1~\2'),
        (r'([( \n-][Ff]ootnotes) +([\\0-9])', r'\1~\2'),
        (r'([( \n-][Tt]ables) +([\\0-9])', r'\1~\2'),
        (r'([( \n-][Ss]ections) +([\\0-9])', r'\1~\2'),
        (r'([^%]) (\\cite\{)', r'\1~\2'),
        (r'([Vv]ariables?) +(\\s)', r'\1~\2'),
        (r'([Pp]arameters?) +(\\s)', r'\1~\2'),
        (r'([Cc]onstants?) +(\\s)', r'\1~\2'),
        (r'([Dd]imensions?) +(\\s)', r'\1~\2'),
        (r'([Ll]engths?) +(\\s)', r'\1~\2'),
        (r'(by) +(\\s)', r'\1~\2'),
        (r'(of) +(\\s\{)', r'\1~\2'),
        #(r'(\\s{\w+}(?:\[[\w_^*]+\]){0,2})~(is)', r'\1 \2'),
        #(r'(\$\\s{\w+}(?:\\su[bp]{[\w_^*]+}(?:\[[\w_^*]+\])?){0,2}\$)~(is)', r'\1 \2'),
        (r'([(?:where)(?:since)(?:because)(?:however)(?:but)(?:only)(?:and)(?:or),;] +\\s{\w+}(?:\[[\w_^*]+\]){0,2}) +(is)', r'\1~\2'),
        (r'([(?:where)(?:since)(?:because)(?:however)(?:but)(?:only)(?:and)(?:or),;] +\$\\s{\w+}(?:\\su[bp]{[\w_^*]+}(?:\[[\w_^*]+\])?){0,2}\$) +(is)', r'\1~\2'),
        # Math mode is implied for simple symbols.
        (r'\$(\\s{\w+}(?:\[[\w_]+\])?)\$', r'\1'),
        # Don't use math mode for numbers.
        (r'\$([0-9]+(?:\.[0-9]+)?)\$', r'\1'),
        # Use the macro for partial derivatives.
        (r'\\frac{\\partial(.+?}{)\\partial', r'\\diffp{\1'),
        # Eliminate repeated words.
        (r'([( \n-])([A-Za-z]+ ) *\2', r'\1\2'),
        (r'([( \n-]The ) *the ', r'\1'),
        # Eliminate the slash in \~.
        (r'\\~', '~'),
        # Capitalize Appendices, Chapters, etc.
        (r'([( \n-])a(ppendices~[0-9])', r'\1A\2'),
        (r'([( \n-])c(hapters~[0-9])', r'\1C\2'),
        (r'([( \n-])f(igures~[0-9])', r'\1F\2'),
        (r'([( \n-])e(quations~[0-9])', r'\1E\2'),
        (r'([( \n-])t(ables~[0-9])', r'\1T\2'),
        (r'([( \n-])s(ections~[0-9])', r'\1S\2'),
        (r'([( \n-])a(ppendices~\\ref\{)', r'\1A\2'),
        (r'([( \n-])c(hapters~\\ref\{)', r'\1C\2'),
        (r'([( \n-])f(igures~\\ref\{)', r'\1F\2'),
        (r'([( \n-])e(quations~\\ref\{)', r'\1E\2'),
        (r'([( \n-])t(ables~\\ref\{)', r'\1T\2'),
        (r'([( \n-])s(ections~\\ref\{)', r'\1S\2'),
        # Use autoref (simpler and creates larger link target).
        (r'(?:[Cc]hapter|[Ss]ection|[Ff]igure|[Tt]able|[Ff]ootnote|[Ee]quation)[~ ]\\ref{(.+)}', r'\\autoref{\1}'),
        # Use ndash for page number ranges.
        (r'(pp\.\\ [0-9]+)-([0-9]+)', r'\1--\2'),
        # Don't use a period at the end of the captions (added automatically by
        # the caption package).
        (r'(\\caption{.+)\.}', r'\1}'),
        (r'(\\caption\[.+?)\.\]', r'\1]'),
        (r'(\\subfloat\[.+)\.\]', r'\1]'),
        # Don't use contractions.
        #("don't", "do not"),
        ("doesn't", "does not"),
        ("isn't", "is not"),
        ("aren't", "are not"),
        ("won't", "will not"),
        ("can't", "cannot"),
        ("there's", "there is"),
        (r"([( \n-]it)'s", r"\1 is"),
        # Common typos
        (r'([Tt]he) *the ', r'\1 '),
        # Start comments with a space if at beginning of line.
        ('^%([^ %])', r'% \1'),
        # Use url command for URLs.
        # URL matching regex from
        # http://daringfireball.net/2010/07/improved_regex_for_matching_urls,
        # 2/4/2013.
        (r"""([ \n])((?i)\b((?:[a-z][\w-]+:(?:/{1,3}|[a-z0-9%])|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:'".,<>?«»“”‘’])))""", r'\1\url{\2}'),
        # Accent in Peclet
        (r'([ \n(-]P)eclet', r"\1\'eclet"),
        # Use the slash command.
        (r'( [A-Za-z]+)/([a-z]+ )', r'\1\\slash \2'),
        # Replacements according to Strunk and White:
        (r'and\\slash or', r'or'),
        (r'([Dd]ifferent ) *than', r'\1from'),
        (r'([Ee]ach) and every', r'\1'),
        (r'Irr(egardless)', r'R\1'),
        (r'Ir(regardless)', r'\1'),
        (r'([Ff]irst)ly', r'\1'),
        (r'([Ss]econd)ly', r'\1'),
        (r'([Tt]hird)ly', r'\1'),
        # Misc.
        (r'(\\slash) ', r"\1{}"),
        ('and also', 'and'),
        #('([Aa]s mentioned) previously', r'\1'),
        ('is dependent on', 'depends on'),
        ('are dependent on', 'depend on'),
        #(r'except for', r"besides"),
       ]

# Directory specification
if (len(sys.argv) > 1):
    directory = sys.argv[1]
else:
    directory = ''

## Procedure
# Method to remove non-ASCII characters.
# See
# http://stackoverflow.com/questions/1342000/how-to-replace-non-ascii-characters-in-string.
def removeNonAscii(s): return "".join(i for i in s if ord(i)<128)

# Compile the regular expressions.
for i, rpl in enumerate(rpls):
    rpls[i] = (re.compile(rpl[0]), rpl[1])

# Replace strings.
for fname in glob.glob(os.path.join(directory, '*.tex')):
    # Read the source file.
    print("Processing %s ... " % fname)
    src = open(fname, 'r')
    text = src.read()
    src.close()
    #text = removeNonAscii(text)
    # **Add a method to warn about non-ASCII characters before removing them.

    # Make the replacements.
    for rpl in rpls:
        text = rpl[0].sub(rpl[1], text)

    nonASCII = "".join(i for i in text if ord(i)>=128)
    if len(nonASCII) > 0:
        print("Warning:  It contains these non-ASCII characters: " + nonASCII)

    # Re-write the file.
    src = open(fname, 'w')
    src.write(text)
    src.close()
