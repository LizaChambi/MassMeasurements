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
MassUnit >> convertTo: aUnit with: aBlock [
	"comment stating purpose of message"
	(unit class = aUnit class) ifTrue: [ ^ self ] ifFalse: aBlock.
	
]

{ #category : #converting }
MassUnit >> div: aValue by: aInteger [
	"comment stating purpose of message"
	^ self subclassResponsibility.
]

{ #category : #converting }
MassUnit >> gramsInPound [
	"comment stating purpose of message"
	^ 450.
]

{ #category : #converting }
MassUnit >> initValue: aValue minusMass: aMass [
	"comment stating purpose of message"
	^ self subclassResponsibility.
]

{ #category : #converting }
MassUnit >> initValue: aValue sumMass: aMass. [
	"comment stating purpose of message"
	^ self subclassResponsibility.
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

{ #category : #converting }
MassUnit >> mult: aValue by: aInteger [
	"comment stating purpose of message"
	^ self subclassResponsibility.
]
