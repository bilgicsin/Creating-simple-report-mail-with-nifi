# Creating-simple-report-mail-with-nifi
A simple data flow desing which sends email with attached HTML file. The HTML file actually is a result of hive query. The avro format of hive query transformed to XML first because transforming XML to HTML much more easy task. To transform XML to HTML a .xslt file has been used.
