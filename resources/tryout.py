########### Python 3.2 #############
import urllib.request, json

try:
    url = "https://api.nyc.gov/public/api/GetContentList?categoryId={categoryId}"

    hdr ={
    # Request headers
    'Cache-Control': 'no-cache',
    'Ocp-Apim-Subscription-Key': '34e35cb344054d34aa9249bc9a57e9da',
    }

    req = urllib.request.Request(url, headers=hdr)

    req.get_method = lambda: 'GET'
    response = urllib.request.urlopen(req)
    print(response.getcode())
    print(response.read())
except Exception as e:
    print(e)
####################################
