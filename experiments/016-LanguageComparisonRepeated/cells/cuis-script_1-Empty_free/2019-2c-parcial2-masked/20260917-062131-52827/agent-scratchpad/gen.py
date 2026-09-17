import sys, re
# Input format: lines "!! Class[ class] | category" start a method; source until next "!!" or EOF.
text = open(sys.argv[1]).read()
parts = re.split(r'^!! (.*)$', text, flags=re.M)
out = []
for i in range(1, len(parts), 2):
    header, src = parts[i], parts[i+1].strip('\n')
    target, cat = [p.strip() for p in header.split('|')]
    names = target.split()
    recv = "(Smalltalk at: #%s)" % names[0] + (" class" if len(names) > 1 else "")
    out.append("%s compile: '%s' classified: '%s'." % (recv, src.replace("'", "''"), cat))
out.append("#done")
open(sys.argv[2], 'w').write("\n".join(out) + "\n")
