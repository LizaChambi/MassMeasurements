Class {
	#name : #MassUnit,
	#superclass : #Object,
	#instVars : [
		'value',
		'unit'
	],
	#category : #Mass
}

{ #category : #'as yet unclassified' }
MassUnit class >> grams: aInteger [
	"comment stating purpose of message"
	^ (self new) value: aInteger unit: Grams new.
]

{ #category : #'as yet unclassified' }
MassUnit class >> pounds: aInteger [
	"comment stating purpose of message"
	^ (self new) value: aInteger unit: Pounds new.
]

{ #category : #converting }
MassUnit >> * aInteger [
	"comment stating purpose of message"
	(aInteger isNumber ) ifTrue: [ self subclassResponsibility ] ifFalse: [ self error: 'El valor de la operación aritmética es incorrecta.' ].
]

{ #category : #converting }
MassUnit >> + aMass [
	"comment stating purpose of message"
	self subclassResponsibility.
]

{ #category : #converting }
MassUnit >> - aMass [
	"comment stating purpose of message"
	self subclassResponsibility.
]

{ #category : #converting }
MassUnit >> / aInteger [
	"comment stating purpose of message"
	[ self subclassResponsibility ] ifError: [ self error: 'El valor de la operación aritmética es incorrecta.' ].
]

{ #category : #converting }
MassUnit >> = aMass [
	"comment stating purpose of message"
	^ (self isSameValue: aMass) and: (self isSameClass: aMass).
]

{ #category : #converting }
MassUnit >> adaptToNumber: anInteger andSend: aString [ 
	^ self subclassResponsibility 
]

{ #category : #converting }
MassUnit >> adaptToNumberPerform: anInteger [
	^ self subclassResponsibility 
]

{ #category : #converting }
MassUnit >> asGrams [
	"comment stating purpose of message"
	self convertTo: (Grams new) with: [ ^ unit convertToGrams: value. ] 
	
]

{ #category : #converting }
MassUnit >> asMilligrams [
	"comment stating purpose of message"
	self subclassResponsibility.
]

{ #category : #converting }
MassUnit >> asPounds [
	"comment stating purpose of message"
	self convertTo: (Pounds new) with: [^ unit convertToPounds: value. ].
]

{ #category : #converting }
MassUnit >> convertTo: aUnit with: aBlock [
	"comment stating purpose of message"
	(unit class = aUnit class) ifTrue: [ ^ self ] ifFalse: aBlock.
	
]

{ #category : #converting }
MassUnit >> gramsInPound [
	"comment stating purpose of message"
	^ 450.
]

{ #category : #converting }
MassUnit >> inGrams [
	^ self subclassResponsibility 
]

{ #category : #converting }
MassUnit >> isSameClass: aMass [
	^ unit class = aMass unit class
]

{ #category : #converting }
MassUnit >> isSameValue: aMass [
	^ (value asFloat round: 17) = ((aMass value) asFloat round: 17).
]

{ #category : #converting }
MassUnit >> milligramsInGram [
	"comment stating purpose of message"
	^ 1000.
]

{ #category : #converting }
MassUnit >> milligramsInPound [
	"comment stating purpose of message"
	^ (0.001) / 450 .
]

{ #category : #evaluating }
MassUnit >> unit [
	"comment stating purpose of message"
	^ unit.
]

{ #category : #evaluating }
MassUnit >> value [
	"comment stating purpose of message"
	^ value.
]

{ #category : #initializing }
MassUnit >> value: anInteger unit: aUnit [ 
	value:= anInteger.
	unit:= aUnit.
]
