Class {
	#name : #MassUnit,
	#superclass : #Object,
	#instVars : [
		'value',
		'unit'
	],
	#category : #Mass
}

{ #category : #converting }
MassUnit >> initValue: aValue minusMass: aMass [
	"comment stating purpose of message"
	^ self subclassResponsibility.
]
