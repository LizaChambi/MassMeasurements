Class {
	#name : #Milligram,
	#superclass : #MassUnit,
	#category : #Mass
}

{ #category : #'instance creation' }
Milligram class >> new: aInteger [
	"comment stating purpose of message"
	^ self new milligram: aInteger.
]

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
