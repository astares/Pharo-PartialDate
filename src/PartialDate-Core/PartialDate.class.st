"
A partial date is basically either a day or a day and a month - yet without a year.
"
Class {
	#name : #PartialDate,
	#superclass : #Object,
	#instVars : [
		'monthIndex',
		'dayOfMonth'
	],
	#category : #'PartialDate-Core-Base'
}

{ #category : #'instance creation' }
PartialDate class >> day: dayInMonth [

	^ self new
		  dayOfMonth: dayInMonth;
		  yourself
]

{ #category : #'instance creation' }
PartialDate class >> day: dayOfMonth month: aMonth [

	^ self new
		  day: dayOfMonth month: aMonth;
		  yourself
]

{ #category : #examples }
PartialDate class >> exampleWithMonth [
	<sampleInstance>

	^ 28st of February
]

{ #category : #examples }
PartialDate class >> exampleWithoutMonth [
	<sampleInstance>

	^ 28st
]

{ #category : #operating }
PartialDate >> April [

	self monthIndex: 4
]

{ #category : #operating }
PartialDate >> August [

	self monthIndex: 8
]

{ #category : #operating }
PartialDate >> December [

	self monthIndex: 12
]

{ #category : #operating }
PartialDate >> February [

	self monthIndex: 2
]

{ #category : #operating }
PartialDate >> January [

	self monthIndex: 1
]

{ #category : #operating }
PartialDate >> July [

	self monthIndex: 7
]

{ #category : #operating }
PartialDate >> June [

	self monthIndex: 6
]

{ #category : #operating }
PartialDate >> March [

	self monthIndex: 3
]

{ #category : #operating }
PartialDate >> May [

	self monthIndex: 5
]

{ #category : #operating }
PartialDate >> November [

	self monthIndex: 11
]

{ #category : #operating }
PartialDate >> October [

	self monthIndex: 10
]

{ #category : #operating }
PartialDate >> September [

	self monthIndex: 9
]

{ #category : #'private - validation' }
PartialDate >> checkValidity [

	self hasMonth ifFalse: [ ^ self checkValidityOfDayOnly ].

	self checkValidityOfMonth.
	self checkValidityOfDayInMonth
]

{ #category : #'private - validation' }
PartialDate >> checkValidityOfDayInMonth [

	| maxDays |
	maxDays := #(31 29 31 30 31 30 31 31 30 31 30 31) at: monthIndex.
	dayOfMonth > maxDays
		ifTrue: [
			self error: 'In ', self monthName, ' a maximum of ', maxDays asString, ' days is allowed' ]
]

{ #category : #'private - validation' }
PartialDate >> checkValidityOfDayOnly [

	self dayOfMonth ifNil: [ ^ self ].

	self dayOfMonth < 1
		ifTrue: [ ^ self error: 'Day must be at least the 1st' ].

	self dayOfMonth > 31
		ifTrue: [ ^ self error: 'Day could be the 31th at maximum' ]
]

{ #category : #'private - validation' }
PartialDate >> checkValidityOfMonth [

	monthIndex ifNil: [ ^ self ].

	monthIndex < 1
		ifTrue: [ ^ self error: 'Month must be at least 1 for January' ].

	monthIndex > 12
		ifTrue: [ ^ self error: 'Month could be 12 for December at maximum' ]
]

{ #category : #accessing }
PartialDate >> day: aDay month: aMonth [

	self
		dayOfMonth: aDay;
		monthIndex: aMonth
]

{ #category : #accessing }
PartialDate >> dayOfMonth [

	^ dayOfMonth
]

{ #category : #accessing }
PartialDate >> dayOfMonth: anObject [

	dayOfMonth := anObject.
	self checkValidity
]

{ #category : #testing }
PartialDate >> hasDay [

	^ dayOfMonth notNil
]

{ #category : #testing }
PartialDate >> hasMonth [

	^ monthIndex notNil
]

{ #category : #evaluating }
PartialDate >> in: aYear [

	^ Date newDay: dayOfMonth month: monthIndex year: aYear
]

{ #category : #accessing }
PartialDate >> monthIndex [

	^ monthIndex
]

{ #category : #accessing }
PartialDate >> monthIndex: anObject [

	monthIndex := anObject.
	self checkValidity
]

{ #category : #accessing }
PartialDate >> monthName [

	^ Month nameOfMonth: monthIndex
]

{ #category : #accessing }
PartialDate >> of [
	 ^ self
]

{ #category : #'private - accessing' }
PartialDate >> ordinalIndicator [

	| exceptions |
	exceptions := #(11 12 13).
	(exceptions includes: dayOfMonth) ifTrue: [ ^ 'th' ].

	(dayOfMonth \\ 10 < 4)
		ifTrue: [ ^ self ordinalIndicators at: dayOfMonth \\ 10 + 1 ].

	^'th'
]

{ #category : #'private - accessing' }
PartialDate >> ordinalIndicators [

	^ #('th' 'st' 'nd' 'rd')
]

{ #category : #printing }
PartialDate >> printOn: aStream [

	self hasDay ifFalse: [ ^ super printOn: aStream ].

	aStream print: dayOfMonth.
	aStream nextPutAll: self ordinalIndicator.

	self hasMonth ifFalse: [ ^ self ].
	aStream nextPutAll: ' of '.
	aStream nextPutAll: self monthName asString
]
