building
xhtmlHeader
	^ '<?xml version="1.0" encoding="ISO-8859-1"?>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
   <link rel="stylesheet" href="stef.css"/>
   <head>
      <title>', self xhtmlName, '</title>
   </head>
   <body>
      <div id="header">
         <div id="headerSiteTitle">', self xhtmlName, '</div>
         <div id="headerPageTitle">Publications</div>
      </div><!-- header-->
      <div xmlns="" id="menu">
         <div id="toc">
            <div id="tocItem"> <a href="index.html">Home</a> </div>
            <div id="tocItem"> <a href="Publications.html">Publications</a> </div>
			<div id="tocItem"> <a href="Supervised.html">PhDs and Masters</a> </div>
            <div id="tocItem"> <a href="Books.html">Books and Columns</a> </div>
			<div id="tocItem"> <a href="FreeBooks.html">Free Smalltalk Books</a> </div>
			<div id="tocItem"> <a href="Resources.html">Downloads/Resources</a> </div>
            <div id="tocItem"> <a href="Teaching.html">Lectures</a> </div>
			<div id="tocItem"> <A HREF= "skweek2.htm">Skweek ...Strikes Back</a></div>
            <div id="tocItem"> <A HREF= "index.html#coor">Coordinates</A> </div>
         </div><!-- toc-->
         <div id="copyright">last revision: ' , Date today printString
		,
			'<br/></div>
				
		<div xmlns="" id="personalDetails">
            <div id="personalDetailsItem"> <A HREF="http://rmod.inria.lille.fr">Rmod</A></div>
		</div>		
      </div> <!-- menu-->
      <div id="mainContent">
	  <div xmlns="" class="paperList"><style type="text/css">
<!--
-->
</style>

The author order of all my articles is meant to be read as follows:
<li>Alphabetical order is used to represent the amount of time spend in writing the paper, implementing the idea and validating it. Alphabetical order is used to say that all authors equally contributed. </li>

<li> When the first author is not the first alphabetically ordered it means that he was the main driver behind the work. But it does not mean that the others did not push hard... </li>
<li> For example, Mario, Luigi, Sonic,  Dante and Rachet means that Mario worked a lot and was the main driver of the work, that Luigi and Sonic equally helped and that Danet and Rachet were less involved.  </li>

<li> I''m against this idea that only the first author counts, because research is a human working in a team work and I hate that people start to count their energy and impact as soon as they are not first author.</li> 
'