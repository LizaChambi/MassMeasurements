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
	aGram := Grams new: 1.
	zeroGrams := Grams new: 0.
]

{ #category : #tests }
GramsTest >> testAGramAsMilligrams [
	"comment stating purpose of message"
	self assert: (aGram asMilligrams) equals: (Milligram new: 1000).
]

{ #category : #tests }
GramsTest >> testZeroGramAsMilligrams [
	"comment stating purpose of message"
	self assert: (zeroGrams asMilligrams) equals: (Milligram new: 0).
]
