from hashlib import sha256
from itertools import permutations
import string
alphabet = list(string.ascii_lowercase)

content1 = f"<html>\n\
<head>\n\
<style type=\"text/css\">\n\
   p.fgfgfgfg {{ font-style: italic; }}\n\
</style>\n\
</head>\n\
<body>\n\
<p class=\"fgfgfgfg\">Jest wspaniale!</p>\n\
</body>\n\
</html>\n"

var2 = "iesfec"
content2 = f"<html>\n\
<head>\n\
<style type=\"text/css\">\n\
   p.{var2} {{ font-style: italic; }}\n\
</style>\n\
</head>\n\
<body>\n\
<p class=\"{var2}\">Jest fatalnie!</p>\n\
</body>\n\
</html>\n"

# print(content1.encode('utf-8'))
# print(sha256(content1.encode('utf-8')).hexdigest())
# print(content2.encode('utf-8'))
# print(sha256(content2.encode('utf-8')).hexdigest())

hash1 = sha256(content1.encode('utf-8')).hexdigest()
for perm in permutations(alphabet, 8):
   var2 = ''.join(perm)
   content2 = f"<html>\n\
<head>\n\
<style type=\"text/css\">\n\
   p.{var2} {{ font-style: italic; }}\n\
</style>\n\
</head>\n\
<body>\n\
<p class=\"{var2}\">Jest fatalnie!</p>\n\
</body>\n\
</html>\n"
   hash2 = sha256(content2.encode('utf-8')).hexdigest()
   if hash1[:8] == hash2[:8]:
      print('COLLISION!!!')
      print(f'Class name: {var2}')
      print(f'Hash: {hash2}')
   
