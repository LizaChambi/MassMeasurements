Class {
	#name : #PoundsTest,
	#superclass : #TestCase,
	#instVars : [
		'aPound',
		'zeroPounds'
	],
	#category : #MassTest
}

{ #category : #running }
PoundsTest >> setUp [
	zeroPounds := Pounds new:0.
	aPound := Pounds new: 1.
]

{ #category : #tests }
PoundsTest >> test0PoundAsMilligrams [
	"comment stating purpose of message"
	self assert: (zeroPounds asMilligrams) equals: (Milligram new: 0)
]

{ #category : #tests }
PoundsTest >> testAPoundAsMilligrams [
	"comment stating purpose of message"
	self assert: (aPound asMilligrams) equals: (Milligram new: (0.001) / 450)
]
