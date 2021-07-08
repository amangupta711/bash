echo "Enter string to encrypt:"
read input
output=`python3 <<END
import base64
a=base64.b64encode(b'$input')
print (a)
END`
echo $output


input1=$output
output1=`python3 <<END
b=$input1
c=str(b,'utf-8')
print (c)

END`

echo $output1

curl -s -X POST "https://cloudkms.googleapis.com/v1/projects/aaa-acg-poc/locations/us-central1/keyRings/snowkeyring/cryptoKeys/snowkmskey/cryptoKeyVersions/1:encrypt"  -d "{\"plaintext\":\"$output1\"}"  -H "Authorization:Bearer $(gcloud auth application-default print-access-token)"  -H "Content-Type:application/json"

in=$(curl -s -X POST "https://cloudkms.googleapis.com/v1/projects/aaa-acg-poc/locations/us-central1/keyRings/snowkeyring/cryptoKeys/snowkmskey/cryptoKeyVersions/1:encrypt"  -d "{\"plaintext\":\"$output1\"}"  -H "Authorization:Bearer $(gcloud auth application-default print-access-token)"  -H "Content-Type:application/json")

echo $in

echo "encrypted $input"
