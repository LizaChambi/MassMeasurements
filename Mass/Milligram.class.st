Class {
	#name : #Milligram,
	#superclass : #MassUnit,
	#category : #Mass
}

{ #category : #'instance creation' }
Milligram class >> new: aValue [
	"comment stating purpose of message"
	^ (Mass new) value: aValue unit: (self new).
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
Milligram >> gramsInMilligram [
	"comment stating purpose of message"
	^ 1000 .
]

{ #category : #converting }
Milligram >> poundsInMilligram [
	"comment stating purpose of message"
	^ 450000 .
]
