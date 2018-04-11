- The way header was managed does not work we should be able to pass them when we are using a Generator.

- There is a bug in transforming characters. Should probably use Zn-Encoders.

Here is some more code to play with:

FileLocator desktop / 'foo.txt' readStreamDo: [ :in |
	in binary.
	FileLocator desktop / 'bar.txt' writeStreamDo: [ :out |
		out binary.
		ZnUtils 
			streamFrom: (ZnCharacterReadStream on: in encoding: #utf8) 
			to: (ZnCharacterWriteStream on: out encoding: #utf8) ] ].

FileLocator desktop / 'foo.txt' readStreamDo: [ :in |
	in binary.
	(ZnCharacterReadStream on: in encoding: #utf8) upToEnd ].

(FileLocator desktop / 'bar.txt') ensureDelete; writeStreamDo: [ :out |
	out binary.
	(ZnCharacterWriteStream on: out encoding: #utf8) << 'élève - Français'; lf ].

I added the explicit 'encoding: #utf8' but it is not necessary as it is the default. Note the explicit switch to binary before usage, that is to prevent any default (which would be UTF-8 anyway).

Start by making sure your source is UTF-8 (read it with the second expression).



- should generate HTML50
<!DOCTYPE html>
<html><head>
<meta charset="UTF-8">
<!-- $Id: index.html,v 1.59 2014/08/29 03:43:22 mradwin Exp $ -->
<title>UTF-8 and Unicode Standards</title>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Weekly news about Pharo | Everything you wanted to know about http://www.pharo.org without being forced to read 1000 mails</title>
	<link rel="profile" href="http://gmpg.org/xfn/11" />
	<link rel="pingback" href="https://pharoweekly.wordpress.com/xmlrpc.php" />
	<link rel="alternate" type="application/rss+xml" title="Weekly news about Pharo &raquo; Feed" href="https://pharoweekly.wordpress.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="Weekly news about Pharo &raquo; Comments Feed" href="https://pharoweekly.wordpress.com/comments/feed/" />