# ocsv
Automatic converter from text table stdout to csv.


````
$ ls -l
total 16
-rw-r--r--  1 user  staff  1072 Jun 23 23:09 LICENSE
-rw-r--r--  1 user  staff    58 Jun 23 23:09 README.md
drwxr-xr-x  3 user  staff   102 Jun 23 23:26 lib
````

````
$ ls -l| ruby lib/ocsv.rb 
total 16
-rw-r--r--,1,user,staff,1072,Jun,23,23:09,LICENSE
-rw-r--r--,1,user,staff,58,Jun,23,23:09,README.md
drwxr-xr-x,3,user,staff,102,Jun,23,23:26,lib
````
