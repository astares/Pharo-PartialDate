"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestPartialDateCoreTests,
	#superclass : #PackageManifest,
	#category : #'PartialDate-Core-Tests-Manifest'
}

{ #category : #'code-critics' }
ManifestPartialDateCoreTests class >> ruleUncommonMessageSendRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGPackageDefinition #(#'PartialDate-Core-Tests')) #'2023-11-16T23:39:26.176+01:00') )
]
