Class {
	#name : #MilligramTest,
	#superclass : #TestCase,
	#instVars : [
		'zeroMilligram',
		'milligrams1000'
	],
	#category : #MassTest
}

{ #category : #running }
MilligramTest >> setUp [
	"comment stating purpose of message"
	milligrams1000 := Mass milligrams: 1000.
	zeroMilligram := Mass milligrams: 0.
]

{ #category : #tests }
MilligramTest >> test0MilligramAsGrams [
	"comment stating purpose of message"
	self assert: (zeroMilligram asGrams) equals: (Mass grams: 0).
]

{ #category : #tests }
MilligramTest >> test0MilligramAsPounds [
	"comment stating purpose of message"
	self assert: (zeroMilligram asPounds) equals: (Mass pounds: 0).
]

{ #category : #tests }
MilligramTest >> test1000MilligramAsGrams [
	"comment stating purpose of message"
	self assert: (milligrams1000 asGrams) equals: (Mass grams: 1).
]

{ #category : #tests }
MilligramTest >> test1000MilligramAsMilligrams [
	"comment stating purpose of message"
	self assert: (milligrams1000 asMilligrams) equals: ( Mass milligrams: 1000 ).
]

{ #category : #tests }
MilligramTest >> test1000MilligramAsPounds [
	"comment stating purpose of message"
	self assert: (milligrams1000 asPounds) equals: (Mass pounds: 1/450).
]

{ #category : #tests }
MilligramTest >> test1000MilligramMult5 [
	"comment stating purpose of message"
	self assert: (milligrams1000 * 5) equals: (Mass milligrams: 5000).
]

{ #category : #tests }
MilligramTest >> test1000MilligramSum0Milligram [
	"comment stating purpose of message"
	self assert: (milligrams1000 + zeroMilligram) equals: (Mass milligrams: 1000).
]

{ #category : #tests }
MilligramTest >> test1000MilligramSum5000Milligram [
	"comment stating purpose of message"
	self assert: (milligrams1000 + (Mass milligrams: 5000)) equals: (Mass milligrams: 6000).
]

{ #category : #tests }
MilligramTest >> test5000MilligramAsPounds [
	"comment stating purpose of message"
	| milligram5k |
	milligram5k := Mass milligrams: 5000.
	self assert: (milligram5k asPounds) equals: (Mass pounds: (5/450 ) asFloat ).
]

{ #category : #tests }
MilligramTest >> testException1000MilligramMult5Milligrams [
	"comment stating purpose of message"
	self should: [1000 milligram * (Milligram new: 5)] raise: (Error).
]

{ #category : #tests }
MilligramTest >> testMult5Mult1000Milligrams [
	"comment stating purpose of message"
	self assert: (5 * milligrams1000) equals: (Mass milligrams: 5000).
]
