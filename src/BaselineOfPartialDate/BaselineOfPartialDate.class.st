"
Baseline for [https://github.com/astares/Pharo-PartialDate](https://github.com/astares/Pharo-PartialDate)
"
Class {
	#name : #BaselineOfPartialDate,
	#superclass : #BaselineOf,
	#category : #'BaselineOfPartialDate-Base'
}

{ #category : #baselines }
BaselineOfPartialDate >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec
			package: 'PartialDate-Core';
			package: 'PartialDate-Core-Tests' with: [spec requires: #('PartialDate-Core') ].

		spec
			group: 'Core' with: #('PartialDate-Core');
			group: 'Tests' with: #('PartialDate-Core-Tests');
			group: 'all' with: #('Core' 'Tests');
			group: 'default' with: #('all')
	]
]
