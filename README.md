squid-tester
============

Simple script to re-download a list of files, printing headers and received files to test connection problems.

## Installation

### Setup

squid-tester setup has some parts, but I've tried to simplify installation - as much as I could!

First, clone down the repository:

    git clone https://github.com/helmedeiros/squid-tester.git
    
Next, you need to make the command executable:

    chmod +x squid-tester

### Starting It Up

Open a new terminal and type the following line:

    ./squid-tester

### What is going on?

First the extract-urls.sh will be called, searching and extracting from err.log file all URLS, based in the following expression:

    cat log.err | grep Forbidden | awk '{print $12}' | cut -c5-90 | cut -d "]" -f1 > urls.txt

After that, it will iterate all address from urls.txt requesting and printing, for each request, its http headers also if it was successfully downloaded or not.

    null	[HTTP/1.1 200 OK]
    Age	[222]
    Content-Length	[2806]
    Expires	[Thu, 31 Dec 2037 23:55:55 GMT]
    Last-Modified	[Tue, 21 May 2013 20:42:33 GMT]
    X-Amz-Cf-Id	[Ftd4v2eoQ-K0eY2ItJ7gLKE7u2XjaABPE7ywN8uxPwxRgPXqu1fPEw==]
    Connection	[keep-alive]
    X-Cache	[Hit from cloudfront]
    Server	[nginx/1.2.6]
    Cache-Control	[public, max-age=315360000]
    Date	[Thu, 31 Oct 2013 00:11:13 GMT]
    Via	[1.1 9866beea4c497888ee3a68f9629a1d91.cloudfront.net (CloudFront)]
    Accept-Ranges	[bytes]
    Content-Type	[image/jpeg]
    Done for main read 2806
