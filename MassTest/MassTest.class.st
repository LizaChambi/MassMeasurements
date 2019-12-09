Class {
	#name : #MassTest,
	#superclass : #TestCase,
	#category : #MassTest
}

{ #category : #tests }
MassTest >> test10GramMinus100Grams [
	"comment stating purpose of message"
	| grams |
	grams := Mass grams: 10.
	self assert: ( grams - (Mass grams: 100)) equals: (Mass grams: -90).
]

{ #category : #tests }
MassTest >> test10GramMinus10Grams [
	"comment stating purpose of message"
	| aGrams |
	aGrams := Mass grams: 10.
	self assert: (aGrams - (Mass grams: 10)) equals: (Mass grams: 0).
]

{ #category : #tests }
MassTest >> test10GramMult100 [
	"comment stating purpose of message"
	| aGrams |
	aGrams := Mass grams: 10.
	self assert: ( aGrams * 100) equals: (Mass grams: 1000).
]

{ #category : #tests }
MassTest >> test10PoundsMinus100Pounds [
	"comment stating purpose of message"
	| aPounds |
	aPounds := Mass pounds: 10.
	self assert: (aPounds - (Mass pounds: 100)) equals: (Mass pounds: -90).
]

{ #category : #tests }
MassTest >> test10PoundsMinus10Pounds [
	"comment stating purpose of message"
	| aPounds |
	aPounds := Mass pounds: 10.
	self assert: (aPounds - (Mass pounds: 10) ) equals: (Mass pounds: 0).
]

{ #category : #tests }
MassTest >> test1GramSum1Pounds [
	"comment stating purpose of message"
	| aGrams |
	aGrams := Mass grams: 1.
	self assert: ( aGrams + (Mass pounds:1)) equals: (Mass grams: 451).
]

{ #category : #tests }
MassTest >> test1PoundsSum450Grams [
	"comment stating purpose of message"
	| aPounds |
	aPounds := Mass pounds: 1.
	self assert: ( aPounds + (Mass grams:450)) equals: (Mass pounds: 2).
]

{ #category : #tests }
MassTest >> test2Mult3GramsIsEquals3GramsMult2 [
	"comment stating purpose of message"
	| grams |
	grams := Mass pounds: 3.
	self assert: ( grams * 2) equals: (2 * grams).
]

{ #category : #tests }
MassTest >> test2MultAPoundsIsEqualsAPoundsMult2 [
	"comment stating purpose of message"
	| pound1 pound2|
	pound1 := Mass pounds: 1.
	pound2 := Mass pounds: 1.
	pound1 * 2.
	2 * pound2.
	self assert: ( pound1) equals: (pound2).
]

{ #category : #tests }
MassTest >> test450GramAsGrams [
	"comment stating purpose of message"
	| aGram |
	aGram := Mass grams: 450.
	self assert: (aGram asGrams) equals: (Mass grams: 450).
]

{ #category : #tests }
MassTest >> test450GramAsPounds [
	"comment stating purpose of message"
	| aGram |
	aGram := Mass grams: 450.
	self assert: (aGram asPounds) equals: (Mass pounds: 1).
]

{ #category : #tests }
MassTest >> test500Mult2Grams [
	"comment stating purpose of message"
	| grams |
	grams := Mass grams: 2.
	self assert: (500 * grams) equals: (Mass grams: 1000).
]

{ #category : #tests }
MassTest >> test500Mult2Pound [
	"comment stating purpose of message"
	| pounds |
	pounds := Mass pounds: 2.
	self assert: (500 * pounds ) equals: (Mass pounds: 1000).
]

{ #category : #tests }
MassTest >> testAGramDiv5 [
	"comment stating purpose of message"
	| aGram |
	aGram := Mass grams: 1.
	self assert: ( aGram / 5) equals: (Mass grams: 1/5).
]

{ #category : #tests }
MassTest >> testAPoundDiv5 [
	"comment stating purpose of message"
	| aPound |
	aPound := Mass pounds: 1.
	self assert: (aPound / 5) equals: (Mass pounds: 1/5).
]

{ #category : #tests }
MassTest >> testAPoundSum5PoundsIsEquals5PoundsSumAPound [
	"comment stating purpose of message"
	| pound1 pound2|
	pound1 := Mass pounds: 1.
	pound2 := Mass pounds: 5.
	self assert: ( pound1 + pound2 ) equals: ( pound2 + pound1).
]

{ #category : #tests }
MassTest >> testAPoundsAsGrams [
	"comment stating purpose of message"
	| aPounds |
	aPounds := Mass pounds: 1.
	self assert: (aPounds asGrams) equals: (Mass grams: 450).
]

{ #category : #tests }
MassTest >> testAPoundsAsPounds [
	"comment stating purpose of message"
	| aPounds |
	aPounds := Mass pounds: 1.
	self assert: (aPounds asPounds) equals: (Mass pounds: 1).
]

{ #category : #tests }
MassTest >> testException10GramMult100Grams [
	"comment stating purpose of message"
	| aGrams |
	aGrams := Mass grams: 10.
	self should: [aGrams * (Mass grams: 100)] raise: (Error).
]

{ #category : #tests }
MassTest >> testException10PoundsMult100Grams [
	"comment stating purpose of message"
	| pounds |
	pounds := Mass pounds: 10.
	self should: [pounds * (Mass grams: 100)] raise: (Error).
]

{ #category : #tests }
MassTest >> testException450Div10Grams [
	"comment stating purpose of message"
	| grams |
	grams := Mass grams: 10.
	self should: [ 450 / grams] raise: (Error).
]

{ #category : #tests }
MassTest >> testException450Minus10Grams [
	"comment stating purpose of message"
	| grams |
	grams := Mass grams: 10.
	self should: [ 450 - grams] raise: (Error).
]

{ #category : #tests }
MassTest >> testException450Sum10Grams [
	"comment stating purpose of message"
	| grams |
	grams := Mass grams: 10.
	self should: [ 450 + grams] raise: (Error).
]

{ #category : #tests }
MassTest >> testExceptionAGramDiv0 [
	"comment stating purpose of message"
	| aGram |
	aGram := Mass grams: 1.
	self should: [aGram / 0] raise: (Error).
]

{ #category : #tests }
MassTest >> testExceptionAGramDivAGram [
	"comment stating purpose of message"
	| aGram |
	aGram := Mass grams: 1.
	self should: [aGram / (Mass grams: 1)] raise: (Error).
]

{ #category : #tests }
MassTest >> testExceptionAPoundDiv0 [
	"comment stating purpose of message"
	| aPound |
	aPound := Mass pounds: 1.
	self should: [aPound / 0] raise: (Error).
]

{ #category : #tests }
MassTest >> testExceptionAPoundDivAPound [
	"comment stating purpose of message"
	| aPound |
	aPound := Mass pounds: 1.
	self should: [aPound / (Mass pounds: 1)] raise: (Error).
]

{ #category : #tests }
MassTest >> testZeroGramAsPounds [
	"comment stating purpose of message"
	| aGram |
	aGram := Mass grams: 0.
	self assert: (aGram asPounds) equals: (Mass pounds: 0).
]

{ #category : #tests }
MassTest >> testZeroGramSum10Grams [
	"comment stating purpose of message"
	| aGrams |
	aGrams := Mass grams: 0.
	self assert: ( aGrams + (Mass grams:10)) equals: (Mass grams: 10).
]

{ #category : #tests }
MassTest >> testZeroPoundsAsGrams [
	"comment stating purpose of message"
	| aPounds |
	aPounds := Mass pounds: 0.
	self assert: (aPounds asGrams) equals: (Mass grams: 0).
]

{ #category : #tests }
MassTest >> testZeroPoundsSum10Pounds [
	"comment stating purpose of message"
	| aPounds |
	aPounds := Mass pounds: 0.
	self assert: (aPounds + (Mass pounds:10)) equals: (Mass pounds: 10).
]
