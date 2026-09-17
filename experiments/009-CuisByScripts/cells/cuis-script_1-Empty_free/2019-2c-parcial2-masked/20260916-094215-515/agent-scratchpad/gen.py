import sys, re
# Input: preamble Smalltalk (until first '!!!'), then blocks "!!! Class[ class] | category" followed by method source.
text = open(sys.argv[1]).read()
parts = re.split(r'^!!! (.+)$', text, flags=re.M)
out = [parts[0].rstrip()]
for header, body in zip(parts[1::2], parts[2::2]):
    target, category = [p.strip() for p in header.split('|')]
    src = body.strip('\n').rstrip()
    out.append("%s compile: '%s' classified: '%s'." % (target, src.replace("'", "''"), category))
out.append("'ok'")
open(sys.argv[2], 'w').write('\n'.join(out) + '\n')
