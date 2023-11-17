"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestBaselineOfPartialDate,
	#superclass : #PackageManifest,
	#category : #'BaselineOfPartialDate-Manifest'
}

{ #category : #'code-critics' }
ManifestBaselineOfPartialDate class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#BaselineOfPartialDate)) #'2023-11-17T01:30:34.361+01:00') )
]
