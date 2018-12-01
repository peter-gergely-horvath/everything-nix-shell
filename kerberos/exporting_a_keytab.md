# Exporting a Kerberos keytab for a specific user via Linux ktutil

This is a sample on how to export a keytab file for a specific user; these settings should work
for the majority of environments.

Login to a host, which is configured for your Kerberos realm and use `ktutil` to export a keytab 
file according to the sample below (replace `foobar` with the actual user name):

```
ktutil

add_entry -password -p foobar -k 1 -e des3-cbc-sha1-kd 
add_entry -password -p foobar -k 1 -e arcfour-hmac-md5 
add_entry -password -p foobar -k 1 -e des-hmac-sha1 
add_entry -password -p foobar -k 1 -e des-cbc-md5 
add_entry -password -p foobar -k 1 -e des-cbc-md4 

wkt foobar.keytab

quit
```

NOTE: these steps can be scripted (piped to `ktutil`), via `echo -e`: simply separate 
the commands by `\n`.

See the official manual for all available commands: 
https://web.mit.edu/kerberos/krb5-1.12/doc/admin/admin_commands/ktutil.html



