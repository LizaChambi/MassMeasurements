Class {
	#name : #Pounds,
	#superclass : #MassUnit,
	#category : #Mass
}

{ #category : #'as yet unclassified' }
Pounds class >> new: aInteger [
	"comment stating purpose of message"
	^ self new pounds: aInteger.
]

{ #category : #'as yet unclassified' }
Pounds class >> poundsInGram [
	"comment stating purpose of message"
	^ 1/450.
]

{ #category : #converting }
Pounds >> * aInteger [
	"comment stating purpose of message"
	(aInteger isNumber ) ifTrue: [ ^ (value * aInteger) pounds ] ifFalse: [ self error: 'El valor de la operación aritmética es incorrecta.' ].
]

{ #category : #converting }
Pounds >> + aMass [
	"comment stating purpose of message"
	^ (value + (aMass asPounds pounds)) pounds.
]

{ #category : #converting }
Pounds >> - aMass [
	"comment stating purpose of message"
	^ (value - (aMass asPounds pounds)) pounds.
]

{ #category : #converting }
Pounds >> / aInteger [
	"comment stating purpose of message"
	[ ^ (value / aInteger) pounds ] ifError: [ self error: 'El valor de la operación aritmética es incorrecta.' ]..
]

{ #category : #'as yet unclassified' }
Pounds >> adaptToNumber: anInteger andSend: aString [ 
	^ (anInteger perform: aString with: self value) pounds.
]

{ #category : #'as yet unclassified' }
Pounds >> adaptToNumberPerform: anInteger [
	^ anInteger pounds.
]

{ #category : #converting }
Pounds >> asGrams [
	"comment stating purpose of message"
	^ Grams new grams: value * self gramsInPound.
]

{ #category : #converting }
Pounds >> asMilligrams [
	"comment stating purpose of message"
	^ Milligram new: value * self milligramsInPound.
]

{ #category : #converting }
Pounds >> asPounds [
	"comment stating purpose of message"
	^ self.
]

{ #category : #converting }
Pounds >> convertToGrams: aInteger [
	"comment stating purpose of message"
	^ (aInteger / self poundsInGram) grams.
]

{ #category : #converting }
Pounds >> convertToPounds: aInteger [
	"comment stating purpose of message"
	^ aInteger pounds.
]

{ #category : #converting }
Pounds >> div: aValue by: aInteger [
	"comment stating purpose of message"
	^ (aValue / aInteger) pounds.
]

{ #category : #converting }
Pounds >> inGrams [
	^ 1/450.
]

{ #category : #converting }
Pounds >> initValue: aValue minusMass: aMass [
	"comment stating purpose of message"
	^ (aValue - (aMass asPounds value)) pounds.
]

{ #category : #converting }
Pounds >> initValue: aValue sumMass: aMass [
	"comment stating purpose of message"
	^ (aValue + (aMass asPounds value)) pounds.
]

{ #category : #converting }
Pounds >> mult: aValue by: aInteger [
	"comment stating purpose of message"
	^ (aValue * aInteger) pounds.
]

{ #category : #'as yet unclassified' }
Pounds >> pounds [
	"comment stating purpose of message"
	^ value.
]

{ #category : #'as yet unclassified' }
Pounds >> pounds: aInteger [
	"comment stating purpose of message"
	value := aInteger
]

{ #category : #converting }
Pounds >> poundsInGram [
	"comment stating purpose of message"
	^ 1/450
]
