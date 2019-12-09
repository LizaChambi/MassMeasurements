Class {
	#name : #Grams,
	#superclass : #MassUnit,
	#category : #Mass
}

{ #category : #'instance creation' }
Grams class >> new: aValue [
	"comment stating purpose of message"
	^ (Mass new) value: aValue unit: (self new).
]

{ #category : #converting }
Grams >> convertToGrams: aInteger [
	"comment stating purpose of message"
	^ aInteger grams
]

{ #category : #converting }
Grams >> convertToMilligrams: aInteger. [
	"comment stating purpose of message"
	^ (aInteger * (Milligram new) gramsInMilligram) milligrams.
]

{ #category : #converting }
Grams >> convertToPounds: aInteger [
	"comment stating purpose of message"
	^ (aInteger * (Pounds new) poundsInGram) pounds.
]
