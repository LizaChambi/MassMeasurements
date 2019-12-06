Class {
	#name : #Mass,
	#superclass : #Object,
	#instVars : [
		'value',
		'massUnit'
	],
	#category : #Mass
}

{ #category : #initalize }
Mass class >> grams: aInteger [
	^ (self new) value: aInteger unit: Grams new.
]

{ #category : #initalize }
Mass class >> pounds: aInteger [
	^ (self new) value: aInteger unit: Pounds new.
]

{ #category : #initializing }
Mass >> * aInteger [
	"comment stating purpose of message"
	(aInteger isNumber ) ifTrue: [ ^ massUnit mult: value by: aInteger] ifFalse: [ self error: 'El valor de la operación aritmética es incorrecta.' ].
]

{ #category : #initializing }
Mass >> + aMass [
	"comment stating purpose of message"
	^ massUnit initValue: value sumMass: aMass.
]

{ #category : #initializing }
Mass >> - aMass [
	"comment stating purpose of message"
	^ massUnit initValue: value minusMass: aMass
]

{ #category : #initializing }
Mass >> / aInteger [
	"comment stating purpose of message"
	[ ^ massUnit div: value by: aInteger] ifError: [ self error: 'El valor de la operación aritmética es incorrecta.' ].
]

{ #category : #initializing }
Mass >> = aMass [
	"comment stating purpose of message"
	^ (self isSameValue: aMass) and: (self isSameMassUnit: aMass).
]

{ #category : #converting }
Mass >> adaptToNumber: anInteger andSend: aString [ 
	^ massUnit adaptToNumberPerform: (anInteger perform: aString with: value).
]

{ #category : #converting }
Mass >> asGrams [
	"comment stating purpose of message"
	^ massUnit convertToGrams: value.
]

{ #category : #converting }
Mass >> asPounds [
	"comment stating purpose of message"
	^ massUnit convertToPounds: value.
]

{ #category : #initializing }
Mass >> convertTo: aUnit [
	"comment stating purpose of message"
	(massUnit class = aUnit class) ifTrue: [ ^ self ] ifFalse: [^ self convertValueTo: aUnit ].
]

{ #category : #initializing }
Mass >> convertTo: aUnit withMethod: aStringMethod [
	"comment stating purpose of message"
	(massUnit class = aUnit) ifTrue: [ ^ self ] ifFalse: [^ (self convertValueTo: (aUnit new)) perform: aStringMethod ].
]

{ #category : #converting }
Mass >> convertValueTo: aMassUnit [
	"comment stating purpose of message"
	^ self asGrams value * (aMassUnit inGrams).
]

{ #category : #initializing }
Mass >> isSameMassUnit: aMass [
	^ massUnit class = aMass massUnit class
]

{ #category : #initializing }
Mass >> isSameValue: aMass [
	^ (value asFloat round: 17) = ((aMass value) asFloat round: 17).
]

{ #category : #initializing }
Mass >> massUnit [
	^ massUnit.
]

{ #category : #initializing }
Mass >> value [
	^ value.
]

{ #category : #initializing }
Mass >> value: aInteger unit: aMassUnit [
	"comment stating purpose of message"
	value := aInteger.
	massUnit := aMassUnit.
]
