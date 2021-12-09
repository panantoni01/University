import requests
import re
import html.parser
from urllib.parse import urlparse
from urllib.parse import urljoin
host = 'https://zapisy.ii.uni.wroc.pl/'
host_python = 'https://www.python.org/'

regex_http_url = re.compile('((http|https)\:\/\/)([a-zA-Z0-9\/\?\:@\-_=#~]+\.)+[a-zA-Z0-9\/\?\:@\-_=#~]+')
regex_subdom_url = re.compile('(\/[a-zA-Z0-9\.\/\?\:@\-_=#]+)+\/{,1}')

# searching for links to other websites
class MyHTMLParser(html.parser.HTMLParser):
    href_list = []
    def handle_starttag(self, tag, attrs) -> None:
        if tag == 'a':
            for (atr, value) in attrs:
                if atr == 'href':
                    self.href_list.append(value)
parser = MyHTMLParser()

visited = [] # pages for which: `action` done, but no further crawling has been done from the page
crawled = [] # pages for which: `action` done and crawling done from the page

def crawl(start_page, distance, action): # start_page is always `http_url`, not subdomain
    data = requests.get(start_page).text
    if start_page not in visited:
        yield (start_page, action(data))
        visited.append(start_page)
    if distance <= 0:
        return
    
    parser.feed(data)
    href_list = list(set(parser.href_list)) # remove duplicates
    
    http_url_list = []
    for page in href_list:
        if regex_http_url.match(page):
            http_url = page
            http_url_list.append(http_url)
        elif regex_subdom_url.match(page):
            scheme = urlparse(start_page).scheme # e.g. http/https
            netloc = urlparse(start_page).netloc # e.g. zapisy.uni.wroc.pl
            http_url = urljoin(scheme + "://" + netloc, page)
            http_url_list.append(http_url)
    
    for http_url in http_url_list:
        if http_url not in crawled:
            yield from crawl(http_url, distance - 1, action)

    crawled.append(start_page)
    visited.append(start_page)


def find_python(text):
    return re.findall(r'[^.\?!>]* [P|p]ython [^.\?!>]*\.', text);

for i in crawl(host_python, 1, find_python):
    print(i)