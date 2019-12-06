Class {
	#name : #GramsTest,
	#superclass : #TestCase,
	#instVars : [
		'aGram',
		'zeroGrams'
	],
	#category : #MassTest
}

{ #category : #tests }
GramsTest >> setUp [
	aGram := Mass grams: 1.
	zeroGrams := Mass grams: 0.
]

{ #category : #tests }
GramsTest >> testAGramAsMilligrams [
	"comment stating purpose of message"
	self assert: (aGram asMilligrams) equals: (Mass milligrams: 1000).
]

{ #category : #tests }
GramsTest >> testZeroGramAsMilligrams [
	"comment stating purpose of message"
	self assert: (zeroGrams asMilligrams) equals: (Mass milligrams: 0).
]
