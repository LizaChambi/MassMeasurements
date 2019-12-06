Class {
	#name : #MassUnit,
	#superclass : #Object,
	#instVars : [
		'value',
		'unit'
	],
	#category : #Mass
}

{ #category : #converting }
MassUnit >> adaptToNumber: anInteger andSend: aString [ 
	^ self subclassResponsibility 
]

{ #category : #converting }
MassUnit >> adaptToNumberPerform: anInteger [
	^ self subclassResponsibility 
]

{ #category : #converting }
MassUnit >> asGrams [
	"comment stating purpose of message"
	self convertTo: (Grams new) with: [ ^ unit convertToGrams: value. ] 
	
]

{ #category : #converting }
MassUnit >> asMilligrams [
	"comment stating purpose of message"
	self subclassResponsibility.
]

{ #category : #converting }
MassUnit >> asPounds [
	"comment stating purpose of message"
	self convertTo: (Pounds new) with: [^ unit convertToPounds: value. ].
]

{ #category : #converting }
MassUnit >> convertTo: aUnit with: aBlock [
	"comment stating purpose of message"
	(unit class = aUnit class) ifTrue: [ ^ self ] ifFalse: aBlock.
	
]

{ #category : #converting }
MassUnit >> gramsInPound [
	"comment stating purpose of message"
	^ 450.
]

{ #category : #converting }
MassUnit >> milligramsInGram [
	"comment stating purpose of message"
	^ 1000.
]

{ #category : #converting }
MassUnit >> milligramsInPound [
	"comment stating purpose of message"
	^ (0.001) / 450 .
]
