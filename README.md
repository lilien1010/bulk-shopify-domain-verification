# bulk-shopify-domain-verification
Verify a list of website is build on top of Shopify or not


## How to use

open terminal.app on your Mac
download script
```
wget https://raw.githubusercontent.com/lilien1010/bulk-shopify-domain-verification/main/bulk-shopify-domain-verification.sh
```

change privilege
```
chmod u+x bulk-shopify-domain-verification.sh
```

#### Create a txt file that contains domains, one domain one line
EG:
```
www.allbirds.com
www.google.com
```

save it as `allwebsite.txt`

then run `./bulk-shopify-domain-verification.sh allwebsite.txt`

it will output result , domain and `YES` split by `\t`, so you can copy it to google sheet, and it will automatically paste into two column.
```
www.allbirds.com	YES
www.google.com	NO
```

### How doose this shell script works?

It read the content from HTTP response header

if the website is hosted on Shopify

there should be field like `Set-Cookie: _shopify_s=be704975-32xxxx`
