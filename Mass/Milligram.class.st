Class {
	#name : #Milligram,
	#superclass : #MassUnit,
	#category : #Mass
}

{ #category : #converting }
Milligram >> * aInteger [
	"comment stating purpose of message"
	(aInteger isNumber ) ifTrue: [ ^ (value * aInteger) milligrams] ifFalse: [ self error: 'El valor de la operación aritmética es incorrecta.' ].
]

{ #category : #converting }
Milligram >> + aMass [
	"comment stating purpose of message"
	(value + (aMass asMilligrams milligram )) milligrams.
]

{ #category : #converting }
Milligram >> adaptToNumber: anInteger andSend: aString [ 
	^ (anInteger perform: aString with: self value) milligrams.
]

{ #category : #converting }
Milligram >> adaptToNumberPerform: anInteger [
	^ anInteger milligrams. 
]

{ #category : #converting }
Milligram >> asGrams [
	"comment stating purpose of message"
	^ (value / self milligramsInGram) grams.
]

{ #category : #converting }
Milligram >> asMilligrams [
	"comment stating purpose of message"
	^ self.
]

{ #category : #converting }
Milligram >> asPounds [
	"comment stating purpose of message"
	^ ( value * self milligramsInPound ) pounds.
]

{ #category : #converting }
Milligram >> convertToGrams: aInteger [
	"comment stating purpose of message"
	^ (aInteger / self gramsInMilligram) grams.
]

{ #category : #converting }
Milligram >> convertToMilligrams: aInteger [
	"comment stating purpose of message"
	^ aInteger milligrams.
]

{ #category : #converting }
Milligram >> convertToPounds: aInteger [
	"comment stating purpose of message"
	^ (aInteger * (Pounds new) poundsInMilligram) pounds.
]

{ #category : #converting }
Milligram >> div: aValue by: aInteger [
	"comment stating purpose of message"
	^ (aValue / aInteger) milligrams.
]

{ #category : #converting }
Milligram >> gramsInMilligram [
	"comment stating purpose of message"
	^ 1000 .
]

{ #category : #converting }
Milligram >> initValue: aValue minusMass: aMass [
	"comment stating purpose of message"
	^ (aValue - (aMass asMilligrams) value) milligrams.
]

{ #category : #converting }
Milligram >> initValue: aValue sumMass: aMass. [
	"comment stating purpose of message"
	^ (aValue + (aMass asMilligrams value)) milligrams.
]

{ #category : #'as yet unclassified' }
Milligram >> milligram [
	"comment stating purpose of message"
	^ value.
]

{ #category : #'as yet unclassified' }
Milligram >> milligram: aInteger [
	"comment stating purpose of message"
	value := aInteger.
]

{ #category : #converting }
Milligram >> mult: aValue by: aInteger [
	"comment stating purpose of message"
	^ (aValue * aInteger) milligrams.
]

{ #category : #converting }
Milligram >> poundsInMilligram [
	"comment stating purpose of message"
	^ 450000 .
]
