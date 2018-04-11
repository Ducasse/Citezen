queries
internationalConferenceQuery

	^ (self annotationWithType:  '*internationalconference*') AND: (self topConferenceQuery) NOT