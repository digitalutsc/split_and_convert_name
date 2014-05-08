convert_name
============
To split XML for Heritage:

- Export XML from CONTENTdm (Export > XML > Standard Dublin Core XML)
- Put XML into an empty directory on Desktop (name whatever)
- Open Terminal
- Navigate to Desktop: cd Desktop/
- Navigate to the directory that the XML is in: cd [name of folder]
- Run the xml_split command AND the name of XML file to be split: xml_split-5.12 [name of file]
- Once it's split, check to make sure that all the files are there; remove any files that are not required
- Do not close Terminal!

Tag Fixes

Add in the following lines:

<!DOCTYPE rdf:RDF SYSTEM "http://dublincore.org/documents/2001/04/11/dcmes-xml/dcmes-xml-dtd.dtd">
<oai_dc:dc xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/oai_dc/ http://www.openarchives.org/OAI/2.0/oai_dc.xsd">

</oai_dc:dc>

Remove the following tags:

Open Sublime
Edit -> Find and Replace

<rdf:RDF … >
<rdf:Description … >

 </rdf:Description>
 </rdf:RDF>

To rename XML for Heritage:

- Keep Terminal open!
- Copy convert_name.sh to folder with metadata file
- Ensure that you're still navigated to the proper directory (Desktop/ > [name of folder])
- Run convert_name script: ./convert_name.sh
- Check the make sure that everything's renamed properly
- Terminal will indicate which files were not renamed - double-check to make sure it's okay


NOTES:

- Using the tab key will autofill the name of the directory
- All commands are case sensitive (including directory names!)
- To navigate to a directory, use the Change Directory command: cd
- To list all of the directories in a location, use the list command: ls
- List of Apple OS X commands: http://ss64.com/osx/

- When renaming, if the Terminal responds "ls: 2013*-*.xml: No such file or directory" - open the bash script in TextWrangler and make the following change:

	Change:
		ls 2013*-*.xml
	
	To:
		ls [first bit of your file names - ie. "utsc"] *-*.xml
