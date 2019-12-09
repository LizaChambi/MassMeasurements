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
Mass class >> milligrams: aInteger [
	^ (self new) value: aInteger unit: Milligram new.
]

{ #category : #initalize }
Mass class >> pounds: aInteger [
	^ (self new) value: aInteger unit: Pounds new.
]

{ #category : #initializing }
Mass >> * aValue [
	"comment stating purpose of message"
	
	(aValue isNumber ) ifTrue: [ ^massUnit class new: (aValue * value) ] ifFalse: [ self error: 'El valor de la operación aritmética es incorrecta.' ].
	
	"(aInteger isNumber ) ifTrue: [ ^ massUnit mult: value by: aInteger] ifFalse: [ self error: 'El valor de la operación aritmética es incorrecta.' ]."
]

{ #category : #initializing }
Mass >> + aMass [
	"comment stating purpose of message"
	"(aMass isMass ) ifTrue: [ ^ massUnit class new: ((aMass convertTo: massUnit) value + value) ] "
	[ (aMass isMass) ifTrue: [^ massUnit class new: ((aMass convertTo: massUnit) value + value)] ] ifError: [self error: 'El valor de la operación aritmética es incorrecta.' ].
	
	"^ massUnit initValue: value sumMass: aMass."
]

{ #category : #initializing }
Mass >> - aMass [
	"comment stating purpose of message"
	(aMass isMass ) ifTrue: [ ^ massUnit class new: (value - (aMass convertTo: massUnit) value) ] 
	ifFalse: [self error: 'El valor de la operación aritmética es incorrecta.' ].
	
	"^ massUnit initValue: value minusMass: aMass"
]

{ #category : #initializing }
Mass >> / aValue [
	"comment stating purpose of message"
	(aValue isNumber ) ifTrue: [ ^massUnit class new: (value / aValue ) ] ifFalse: [ self error: 'El valor de la operación aritmética es incorrecta.' ].
	
	"[ ^ massUnit div: value by: aInteger] ifError: [ self error: 'El valor de la operación aritmética es incorrecta.' ]."
]

{ #category : #initializing }
Mass >> = aMass [
	"comment stating purpose of message"
	^ (self isSameValue: aMass) and: (self isSameMassUnit: aMass).
]

{ #category : #converting }
Mass >> adaptToNumber: anInteger andSend: aString [ 

	(aString = #* ) ifTrue:[^ massUnit class new: (anInteger perform: aString with: value)] ifFalse:[ self error: 'El valor de la operación aritmética es incorrecta.' ]
]

{ #category : #converting }
Mass >> asGrams [
	"comment stating purpose of message"
	^ massUnit convertToGrams: value.
]

{ #category : #converting }
Mass >> asMilligrams [
	"comment stating purpose of message"
	^ massUnit convertToMilligrams: value.
]

{ #category : #converting }
Mass >> asPounds [
	"comment stating purpose of message"
	^ massUnit convertToPounds: value.
]

{ #category : #'model access' }
Mass >> convertTo: aMassUnit [
	"comment stating purpose of message"
	(aMassUnit class = Grams) ifTrue: [ ^ self asGrams ].
	(aMassUnit class = Pounds) ifTrue: [ ^ self asPounds ].
	(aMassUnit class = Milligram) ifTrue: [ ^ self asMilligrams ].
		
]

{ #category : #converting }
Mass >> convertValueTo: aMassUnit [
	"comment stating purpose of message"
	^ self asGrams value * (aMassUnit inGrams).
]

{ #category : #testing }
Mass >> isMass [
	"comment stating purpose of message"
	^ true
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
