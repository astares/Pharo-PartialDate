"
A PartialDateTest is a test class for testing the behavior of PartialDate
"
Class {
	#name : #PartialDateTest,
	#superclass : #TestCase,
	#category : #'PartialDate-Core-Tests-Base'
}

{ #category : #'tests - months' }
PartialDateTest >> test1sOfApril [

	self
		assert: (1st of April isKindOf: PartialDate);
		assert: 1st of April dayOfMonth equals: 1;
		assert: 1st of April monthIndex equals: 4
]

{ #category : #'tests - months' }
PartialDateTest >> test1sOfAugust [

	self
		assert: (1st of August isKindOf: PartialDate);
		assert: 1st of August dayOfMonth equals: 1;
		assert: 1st of August monthIndex equals: 8
]

{ #category : #'tests - months' }
PartialDateTest >> test1sOfDecember [

	self
		assert: (1st of December isKindOf: PartialDate);
		assert: 1st of December dayOfMonth equals: 1;
		assert: 1st of December monthIndex equals: 12
]

{ #category : #'tests - months' }
PartialDateTest >> test1sOfFebruary [

	self
		assert: (1st of February isKindOf: PartialDate);
		assert: 1st of February dayOfMonth equals: 1;
		assert: 1st of February monthIndex equals: 2
]

{ #category : #'tests - months' }
PartialDateTest >> test1sOfJuly [

	self
		assert: (1st of July isKindOf: PartialDate);
		assert: 1st of July dayOfMonth equals: 1;
		assert: 1st of July monthIndex equals: 7
]

{ #category : #'tests - months' }
PartialDateTest >> test1sOfJune [

	self
		assert: (1st of June isKindOf: PartialDate);
		assert: 1st of June dayOfMonth equals: 1;
		assert: 1st of June monthIndex equals: 6
]

{ #category : #'tests - months' }
PartialDateTest >> test1sOfMarch [

	self
		assert: (1st of March isKindOf: PartialDate);
		assert: 1st of March dayOfMonth equals: 1;
		assert: 1st of March monthIndex equals: 3
]

{ #category : #'tests - months' }
PartialDateTest >> test1sOfMay [

	self
		assert: (1st of May isKindOf: PartialDate);
		assert: 1st of May dayOfMonth equals: 1;
		assert: 1st of May monthIndex equals: 5
]

{ #category : #'tests - months' }
PartialDateTest >> test1sOfNovember [

	self
		assert: (1st of November isKindOf: PartialDate);
		assert: 1st of November dayOfMonth equals: 1;
		assert: 1st of November monthIndex equals: 11
]

{ #category : #'tests - months' }
PartialDateTest >> test1sOfOctober [

	self
		assert: (1st of October isKindOf: PartialDate);
		assert: 1st of October dayOfMonth equals: 1;
		assert: 1st of October monthIndex equals: 10
]

{ #category : #'tests - months' }
PartialDateTest >> test1sOfSeptember [

	self
		assert: (1st of September isKindOf: PartialDate);
		assert: 1st of September dayOfMonth equals: 1;
		assert: 1st of September monthIndex equals: 9
]

{ #category : #'tests - endings' }
PartialDateTest >> test1st [

	self
		assert: (1 st isKindOf: PartialDate);
		assert: 1 st dayOfMonth equals: 1
]

{ #category : #'tests - months' }
PartialDateTest >> test1stOfJanuary [

	self
		assert: (1st of January isKindOf: PartialDate);
		assert: 1st of January dayOfMonth equals: 1;
		assert: 1st of January monthIndex equals: 1
]

{ #category : #'tests - endings' }
PartialDateTest >> test2nd [

	self
		assert: (2nd isKindOf: PartialDate);
		assert: 2nd dayOfMonth equals: 2
]

{ #category : #'tests - endings' }
PartialDateTest >> test3rd [

	self
		assert: (3 rd isKindOf: PartialDate);
		assert: 3 rd dayOfMonth equals: 3
]

{ #category : #'tests - endings' }
PartialDateTest >> test4th [

	self
		assert: (4th isKindOf: PartialDate);
		assert: 4th dayOfMonth equals: 4
]

{ #category : #'tests - wrong' }
PartialDateTest >> testExceedMaximumOfDaysInMonth [

	self
		should: [ 30th of February ] raise: Error;
		should: [ 31th of February ] raise: Error.

	self should: [ 31th of April ] raise: Error.

	self should: [ 31th of June ] raise: Error.

	self should: [ 31th of September ] raise: Error.

	self should: [ 31th of November ] raise: Error
]

{ #category : #'tests - testing' }
PartialDateTest >> testHasDay [

	self deny: PartialDate new hasDay.

	self assert: 12th hasDay.

	self assert: 12th of October hasMonth
]

{ #category : #'tests - testing' }
PartialDateTest >> testHasMonth [

	self deny: 12th hasMonth.

	self assert: 12th of October hasMonth
]

{ #category : #'tests - boundaries' }
PartialDateTest >> testLowerBoundaryDay [

	self should: [ 0st ] raise: Error
]

{ #category : #tests }
PartialDateTest >> testOf [

	self
		assert: (4th of isKindOf: PartialDate);
		assert: 4th of dayOfMonth equals: 4
]

{ #category : #'tests - printing' }
PartialDateTest >> testPrintString [

	self assert: 1st of December printString equals: '1st of December'.
	self assert: 2nd of January printString equals: '2nd of January'
]

{ #category : #'tests - printing' }
PartialDateTest >> testPrintStringWithOf [

	self assert: 1st of printString equals: '1st'
]

{ #category : #'tests - printing' }
PartialDateTest >> testPrintStringWithoutMonth [

	self
		assert: 1st printString equals: '1st';
		assert: 2nd printString equals: '2nd';
		assert: 3 rd printString equals: '3rd';
		assert: 4th printString equals: '4th';
		assert: 5th printString equals: '5th';
		assert: 6th printString equals: '6th';
		assert: 7th printString equals: '7th';
		assert: 8th printString equals: '8th';
		assert: 9th printString equals: '9th';
		assert: 10th printString equals: '10th';
		assert: 11th printString equals: '11th';
		assert: 12th printString equals: '12th';
		assert: 13th printString equals: '13th';
		assert: 14th printString equals: '14th';
		assert: 15th printString equals: '15th';
		assert: 16th printString equals: '16th';
		assert: 17th printString equals: '17th';
		assert: 18th printString equals: '18th';
		assert: 19th printString equals: '19th';
		assert: 20th printString equals: '20th';
		assert: 21th printString equals: '21st';
		assert: 22th printString equals: '22nd';
		assert: 23th printString equals: '23rd';
		assert: 24th printString equals: '24th';
		assert: 25th printString equals: '25th';
		assert: 26th printString equals: '26th';
		assert: 27th printString equals: '27th';
		assert: 28th printString equals: '28th';
		assert: 29th printString equals: '29th';
		assert: 30th printString equals: '30th';
		assert: 31th printString equals: '31st'
]

{ #category : #'tests - boundaries' }
PartialDateTest >> testUpperBoundaryDay [

	self should: [ 32st ] raise: Error
]

{ #category : #'tests - wrong' }
PartialDateTest >> testWrongWithoutMonth [

	self should: [ 0st ] raise: Error.

	self should: [ 32th ] raise: Error
]
