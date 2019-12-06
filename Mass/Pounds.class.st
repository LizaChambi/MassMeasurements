Class {
	#name : #Pounds,
	#superclass : #MassUnit,
	#category : #Mass
}

{ #category : #'as yet unclassified' }
Pounds >> adaptToNumber: anInteger andSend: aString [ 
	^ (anInteger perform: aString with: self value) pounds.
]

{ #category : #'as yet unclassified' }
Pounds >> adaptToNumberPerform: anInteger [
	^ anInteger pounds.
]

{ #category : #converting }
Pounds >> asMilligrams [
	"comment stating purpose of message"
	^ Milligram new: value * self milligramsInPound.
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
