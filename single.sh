while :
do
  echo "Enter string to encrypt:"
read input


output=`python3 <<END
import base64
a=base64.b64encode(b'$input')
print (a)
END`
#echo $output


input1=$output
output1=`python3 <<END
b=$input1
c=str(b,'utf-8')
print (c)

END`

#echo $output1

#curl -s -X POST "https://cloudkms.googleapis.com/v1/projects/aaa-acg-poc/locations/us-central1/keyRings/snowkeyring/cryptoKeys/snowkmskey/cryptoKeyVersions/1:encrypt"  -d "{\"plaintext\":\"$output1\"}"  -H "Authorization:Bearer $(gcloud auth application-default print-access-token)"  -H "Content-Type:application/json"

in=`curl -s -X POST "https://cloudkms.googleapis.com/v1/projects/aaa-acg-poc/locations/us-central1/keyRings/snowkeyring/cryptoKeys/snowkmskey/cryptoKeyVersions/1:encrypt"  -d "{\"plaintext\":\"$output1\"}"  -H "Authorization:Bearer $(gcloud auth application-default print-access-token)"  -H "Content-Type:application/json"|tr -d '\n'`

#echo $in

cipher=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted $input"
echo $cipher

echo ""


  echo -n "want to encrypt more parameters? (y/n) "
  read CHOICE
  [ "$CHOICE" = "n" ] && break
done
