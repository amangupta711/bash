echo "Encrypting Parameters:"
echo "encrypting ServerName"


output=`python3 <<END
import base64
a=base64.b64encode(b'nk84681.us-central1.gcp.snowflakecomputing.com')
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

servername=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted servername"
echo $servername

echo ""
#username
echo "encrypting username"


output=`python3 <<END
import base64
a=base64.b64encode(b'SNOWRIDE_user')
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

username=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted username"
echo $username

echo ""
#password
echo "encrypting password"


output=`python3 <<END
import base64
a=base64.b64encode(b'SNOWRIDE')
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

password=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted password"
echo $password

echo ""
#pass
#----
#role
echo "encrypting role"


output=`python3 <<END
import base64
a=base64.b64encode(b'SNOWRIDE_role')
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

role=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted role"
echo $role

echo ""
#role
#warhouse
echo "encrypting warehouse"


output=`python3 <<END
import base64
a=base64.b64encode(b'SNOWRIDE_WH')
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

warehouse=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted warehouse"
echo $warehouse

echo ""
#warehouse
#database
echo "encrypting database"


output=`python3 <<END
import base64
a=base64.b64encode(b'SNOWRIDE_DB')
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

database=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted database"
echo $database

echo ""
#database
#storageIntegrationName
echo "encrypting storageIntegrationName"


output=`python3 <<END
import base64
a=base64.b64encode(b'gcs_integration')
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

storageIntegrationName=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted storageIntegrationName"
echo $storageIntegrationName

echo ""
#storageIntegrationName
#table
echo "encrypting table"


output=`python3 <<END
import base64
a=base64.b64encode(b'trip_batch_write')
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

table=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted table"
echo $table

echo ""
#table
#stagingBucketName
echo "encrypting stagingBucketName"


output=`python3 <<END
import base64
a=base64.b64encode(b'gs://dataflow_snowflake_template/processing/batch_load/')
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

stagingBucketName=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted stagingBucketName"
echo $stagingBucketName

echo ""
#StagingBucketName
#schema
echo "encrypting schema"


output=`python3 <<END
import base64
a=base64.b64encode(b'SNOWRIDE_SH')
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

schema=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted schema"
echo $schema

echo ""
#schema
#sourceFormat
echo "encrypting sourceFormat"
echo "csv or json or avro"
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

sourceFormat=`python3 <<END
import re
s = """$in"""
subStr = re.findall(r'ciphertext": "(.+?)",',s)
lst = subStr
lst_str = str(lst)[2:-2] 
print(lst_str)
END`

echo ""
echo "encrypted sourceFormat $input"
echo $sourceFormat

echo ""
#sourceFormat

#-------------------------------------------------

echo "Give job name"
read jobname

echo "gcloud dataflow flex-template run $jobname --template-file-gcs-location gs://dataflow_snowflake_template/templates/GCSToSnowflake_flex --region us-central1 --staging-location gs://dataflow_snowflake_template/temp/ --service-account-email=sfconnector@aaa-acg-poc.iam.gserviceaccount.com --parameters inputFilePath=gs://dataflow_snowflake_template/sf_input/sf_sample_data_very_low_volume.csv,serverName='\${$servername}',tokenKMSEncryptionKey=projects/aaa-acg-poc/locations/us-central1/keyRings/snowkeyring/cryptoKeys/snowkmskey,username='\${$username}',password='\${$password}',role='\${$role}',warehouse='\${$warehouse}',database='\${$database}',storageIntegrationName='\${$storageIntegrationName}',table='\${$table}',stagingBucketName='\${$stagingBucketName}',schema='\${$schema}',sourceFormat='\${$sourceFormat}'"







