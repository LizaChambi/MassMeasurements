Class {
	#name : #Grams,
	#superclass : #MassUnit,
	#category : #Mass
}

{ #category : #converting }
Grams >> adaptToNumberPerform: anInteger [
	^ anInteger grams.
]

{ #category : #deprecated }
Grams >> asMilligrams [
	"comment stating purpose of message"
	^ Milligram new: value * self milligramsInGram .
]

{ #category : #converting }
Grams >> convert: aValue toUnit: aUnit [
	"comment stating purpose of message"
	^ ( aValue * aUnit inGrams) grams.
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

{ #category : #converting }
Grams >> div: aValue by: aInteger [
	"comment stating purpose of message"
	^ (aValue / aInteger) grams.

]

{ #category : #converting }
Grams >> initValue: aValue minusMass: aMass [
	"comment stating purpose of message"
	^ (aValue - (aMass asGrams) value) grams.
]

{ #category : #converting }
Grams >> initValue: aValue sumMass: aMass [
	"comment stating purpose of message"
	^ (aValue + (aMass asGrams value)) grams.
]

{ #category : #converting }
Grams >> mult: aValue by: aInteger [
	"comment stating purpose of message"
	^ (aValue * aInteger) grams.

]
