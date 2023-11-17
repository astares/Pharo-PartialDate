"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestPartialDateCore,
	#superclass : #PackageManifest,
	#category : #'PartialDate-Core-Manifest'
}

{ #category : #'code-critics' }
ManifestPartialDateCore class >> ruleLiteralArrayContainsSuspiciousTrueFalseOrNilRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#'ManifestPartialDateCore class' #ruleUncommonMessageSendRuleV1FalsePositive #true)) #'2023-11-17T01:24:39.055+01:00') #(#(#RGMethodDefinition #(#'ManifestPartialDateCore class' #ruleUnaryAccessingMethodWithoutReturnRuleV1FalsePositive #true)) #'2023-11-17T01:25:23.076+01:00') #(#(#RGMethodDefinition #(#'ManifestPartialDateCore class' #ruleLiteralArrayContainsSuspiciousTrueFalseOrNilRuleV1FalsePositive #true)) #'2023-11-17T01:27:10.019+01:00') )
]

{ #category : #'code-critics' }
ManifestPartialDateCore class >> ruleUnaryAccessingMethodWithoutReturnRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#PartialDate #November #false)) #'2023-11-16T20:21:09.276+01:00') )
]

{ #category : #'code-critics' }
ManifestPartialDateCore class >> ruleUncommonMessageSendRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Integer #April #false)) #'2023-11-16T20:17:23.949+01:00') #(#(#RGMethodDefinition #(#Integer #August #false)) #'2023-11-16T20:17:40.328+01:00') #(#(#RGMethodDefinition #(#Integer #December #false)) #'2023-11-16T20:17:53.16+01:00') #(#(#RGMethodDefinition #(#Integer #February #false)) #'2023-11-16T20:18:05.872+01:00') #(#(#RGMethodDefinition #(#Integer #January #false)) #'2023-11-16T20:18:24.341+01:00') #(#(#RGMethodDefinition #(#Integer #July #false)) #'2023-11-16T20:18:39.957+01:00') #(#(#RGMethodDefinition #(#Integer #June #false)) #'2023-11-16T20:18:49.442+01:00') #(#(#RGMethodDefinition #(#Integer #March #false)) #'2023-11-16T20:19:04.193+01:00') #(#(#RGMethodDefinition #(#Integer #May #false)) #'2023-11-16T20:19:14.665+01:00') #(#(#RGMethodDefinition #(#Integer #November #false)) #'2023-11-16T20:19:24.554+01:00') #(#(#RGMethodDefinition #(#Integer #October #false)) #'2023-11-16T20:19:40.504+01:00') #(#(#RGMethodDefinition #(#Integer #September #false)) #'2023-11-16T20:19:52.099+01:00') #(#(#RGPackageDefinition #(#'PartialDate-Core')) #'2023-11-17T01:14:42.79+01:00') )
]
