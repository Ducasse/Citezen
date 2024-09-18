# ----------------------------------------------------------------------
# Makefile to pull,check and push bib files
#
# ----------------------------------------------------------------------

# Tracked bibliography files
b = bib/rmod.bib bib/others.bib

all : kozen generate

#update :
#	@git pull origin master
	
kozen : install
	./Citezen/build/pharo  --headless ./Citezen/build/Pharo.image eval --save "Metacello new baseline: 'Kozen'; onConflict: [ :ex | ex useIncoming ]; repository: 'github://Ducasse/Kozen'; load."

#to clean citezen install
cleanCitezen :
	rm -rf Citezen
	
#to install citezen 
#to do how to check that a folder exists already?
install : 
	[ -d Citezen ] || git clone git@github.com:Ducasse/Citezen.git && cd Citezen && git checkout v1.0.1 && cd ..
	[ -f Citezen/build/Pharo.image ] || { cd Citezen; ./scripts/build.sh; }
	
generate :  
	cpbib ; ./Citezen/build/pharo  --headless ./Citezen/build/Pharo.image eval "StefSite new bibSetFromFile: 'rmod.bib'; generate."
	
openPharo :
	./Citezen/build/pharo-ui ./Citezen/build/Pharo.image

upload :
	freeweb
