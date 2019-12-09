Class {
	#name : #Pounds,
	#superclass : #MassUnit,
	#category : #Mass
}

{ #category : #'instance creation' }
Pounds class >> new: aValue [
	"comment stating purpose of message"
	^ (Mass new) value: aValue unit: (self new).
]

{ #category : #converting }
Pounds >> convertToGrams: aInteger [
	"comment stating purpose of message"
	^ (aInteger / self poundsInGram) grams.
]

{ #category : #converting }
Pounds >> convertToMilligrams: aInteger. [
	"comment stating purpose of message"
	^ (aInteger / (Milligram new) poundsInMilligram) milligrams.
]

{ #category : #converting }
Pounds >> convertToPounds: aInteger [
	"comment stating purpose of message"
	^ aInteger pounds.
]

{ #category : #converting }
Pounds >> poundsInGram [
	"comment stating purpose of message"
	^ 1/450
]

{ #category : #converting }
Pounds >> poundsInMilligram [
	"comment stating purpose of message"
	^ (1/450) / 1000.
]
