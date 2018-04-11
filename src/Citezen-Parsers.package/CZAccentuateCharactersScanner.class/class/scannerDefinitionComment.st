generated-comments
scannerDefinitionComment

	"<plainChar>					:	[a-zA-Z]						;
<openingBrace>				:	\{							;
<closingBrace>				:	\}							;
<noBackSlash>				:	[^a-zA-Z\\\~\}]					;
<doubleSlash>				:	\\ \\								;
<otherSlashedChar>			:	\\ [^'\`\^\""\~\=\.\v\u\H]		;
<dollar>						:	$							;
<endash>						:	\- \-							;
<emdash>					:	\- \- \-							;

#international characters
<acute>						:	\\ \' 							;	# \'{ }
<grave>						:	\\ \` 							;	# \`{ }
<circumflex>					:	\\ \^	 					;	# \^{ }
<umlaut>						:	\\ \""			 				;	# \""{ }
<tilde>							:	\\ \~			 			;	# \~{ }
<bar>							:	\\ \=	 					;	# \={ }
<dot>							:	\\ \.				 			;	# \.{ }
<invCircumflex>				:	\\ v 							;	# \v{ }
<arc>							:	\\ u		 					;	# \u{ }
<doubleQuote>				:	\\ H 						;	# \H{ }

#special characters
<ccedilla>						:	\\ c \{ c \} | \\ c \  c 			;	# \c{c}
<scedilla>						:	\\ c \{ s \} | \\ c \  s			;	# \c{s}
<tcedilla>						:	\\ c \{ t \} | \\ c \  t			;	# \c{t}
<inversedQuestionMark>		:	\? \'							;	# ?`
<oe>							:	\\ o e						;	# \oe
<ae>							:	\\ a e						;	# \ae
<ss>							:	\\ s s						;	# {\ss}
<smallRingedA>				:	\\ a a						;	# \aa
<capitalRingedA>				:	\\ A A						;	# \AA
<smallSlashedO>				:	\\ / o						;	# \/o
<capitalSlashedO>				:	\\ O							;	# \O
<barredL>						:	\\ l							;	# \l
<capitalBarredL>				:	\\ L							;	# \L
<iForm>						:	\\ i							;	# \i
<jForm>						:	\\ j							;	# \j
<nonBreakingSpace>			:	\~							;	# ~
<optionalHyphen>				:	\\ -							;	# \-
<ampersand>					:	\\ &							;	# \&
<percent>						:	\\ %						;	# \%
<hash>							:	\\ \#						;

<circlea>						:	\\ o a						;	# \oa
<nu>							:	\\ n u						;	# \nu
<pi>							:	\\ p i						;	# \pi
<tau>							:	\\ t a u						;	# \tau
<omega>						:	\\ o m e g a					;	# \omega
<neq>							:	\\ n e q						;	# \neq
<wedge>						:	\\ w e d g e					;	# \wedge

#unclassified things
<underscoredChar>			:	\\ b \x20					;	# \b"