# bulk-shopify-domain-verification
Verify a list of website is build on topof Shopify or not


## How to use

### Create a txt file that contains domains, one domain one line
EG:
```
v
```

save it as `allwebsite.txt`

then run `./check_is_shopify_website.sh allwebsite.txt`

it will output result , domain and `YES` split by `\t`, so you can copy it to google sheet, and it will automatically paste into two column.
```
www.allbirds.com	YES
www.google.com	NO
```
