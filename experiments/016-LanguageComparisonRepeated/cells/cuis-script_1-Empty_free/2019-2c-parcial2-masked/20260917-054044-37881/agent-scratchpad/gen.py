import sys, re
src = open(sys.argv[1]).read()
out = [open(sys.argv[2]).read()] if len(sys.argv) > 2 else []
for chunk in re.split(r'^== ', src, flags=re.M)[1:]:
    header, _, body = chunk.partition('\n')
    target, cat = [x.strip() for x in header.split('|')]
    body = body.rstrip() .replace("'", "''")
    out.append("%s compile: '%s' classified: '%s'.\n" % (target, body, cat))
out.append("'ok'\n")
print(''.join(out))
