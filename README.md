Split XML Files and Change Name
============

Split XML:
----------

- Ensure that your MODSXML is valid
- Download and install [XML::Twig](http://search.cpan.org/~mirod/XML-Twig-3.48/Twig.pm)
- Run the xml_split command: <code>xml_split [name of file]</code>
- Once it's split, check to make sure that all the files are there


Change Name
-----------
**This script rewrites the file name to match the contents of one of the metadata elements in the file**

Edit convert_name.sh:
- In a text editor, change <code>ls 2013*-*.xml</code> to <code>ls [first bit of your file names - ie. "utsc"] *-*.xml</code>
- Depending on the XML schema, you might need to change <code>grep 'identifier'</code> to match your identifier

Run:
- Copy convert_name.sh to folder with metadata file
- Run <code>convert_name script: ./convert_name.sh</code>
- Check the make sure that everything's renamed properly



- When renaming, if the Terminal responds "ls: 2013*-*.xml: No such file or directory" - open the bash script in TextWrangler and make the following change:

	Change:
		ls 2013*-*.xml
	
	To:
		ls [first bit of your file names - ie. "utsc"] *-*.xml
