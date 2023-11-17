Extension { #name : #Date }

{ #category : #'*PartialDate-Core' }
Date >> asPartialDate [

	^ PartialDate day: self dayOfMonth month: self monthIndex
]
