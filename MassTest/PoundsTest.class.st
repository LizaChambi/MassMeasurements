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
	zeroPounds := Mass pounds: 0.
	aPound := Mass pounds: 1.
]

{ #category : #tests }
PoundsTest >> test0PoundAsMilligrams [
	"comment stating purpose of message"
	self assert: (zeroPounds asMilligrams) equals: (Mass milligrams: 0)
]

{ #category : #tests }
PoundsTest >> testAPoundAsMilligrams [
	"comment stating purpose of message"
	self assert: (aPound asMilligrams) equals: (Mass milligrams: (0.001) / 450)
]
