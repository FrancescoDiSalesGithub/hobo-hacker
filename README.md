# hobo-hacker

![logo](OIG1.cjr18.jpeg)

hacking tools using basic linux command and bash shell scripting instead of complex frameworks 

# Summary 
* Introduction
* fuzzing tools
* ip sweep
* port scanning
* Rest api calls
* Cracking hash
* Donation

## Introduction 
Since most commons frameworks are easily detectable by siem investigation, the goal of this repository is to implement hacking techniques using basic linux command tools like: netcat, curl, ping.

## Fuzzing tools
Is it possible with curl to create a simple web fuzzer. Here the bash scripts:
* hostfuzzing 
* subdomainfuzzing
* virtualhostfuzzing

For these scripts pass:
* as first argument the host
* as second argument the fuzz file

Example:
```
bash hostfuzzing.sh google.it seclists/Discovery/Web-Content/directory-list-2.3-small.txt
```

## IP sweep
Is it possible to enumerate a LAN network by simply using the ip utils. The bash script that does this functionality is **pingsweep.sh*.
Example usage:
```
bash pingsweep.sh 192.168.40
```

## Port scanning
With netcat is it possible to create a simple port scanning. The bash scripting strategy uses two solutions:
* A full port scanning => it iterates until the last port passed
* A selected port range => it iterates in a text file selected ports

In the first solution the bash script is the following:
```
bash portscanning.sh 127.0.0.1 80
```
For the second solution the bash script is the following:
```
bash portspecificscanning.sh 127.0.0.1 ports.txt
```

## Rest api calls
With curl is possible to do rest api calls, the bash script here do a get call and a json request rest api call:
* get.sh
* jsonpost.sh

For get.sh it's enough to pass only as paramter the URL without http or https:
```
bash get.sh google.it/images
```
For jsonpost.sh for first parameter it's mandatory the host, and as the second paramter the json body:
```
bash jsonpost.sh myvulnsite.com {"value":1}
```

## Cracking hash
The following bash scripts crack the following hash algorithm using dictionary attack:
* md5cracker.sh => cracks md5 hashes
* sha1cracker.sh => cracks sha1 hashes
* sha256cracker.sh => cracks sha256 hashes

For each of these bash scripts pass as first argument the hash and as second argument the dictionary file:
```
bash md5cracker.sh b1946ac92492d2347c6235b4d2611184 dictionary.txt
```


# Donation

I hope you found this experiment interesting. I love creating open-source projects and sharing knowledge with the community. If you’d like to support my future work, you can do so in a couple of ways:

* 💰 Donate Monero (XMR): ```4B9WQivaHfd3miDfPKEfCianocGpBx9d8FXycz2vmNW3aBDVKHgkBd9Gmapt4RBVEpTwnehujsiUBBehUiLvnEHs7VFstCC```
* 💵 Donate via PayPal: https://www.paypal.me/francescodisales

Every donation helps me continue building tools, research, and experiments for the benefit of the community. Thank you for your support!
 



