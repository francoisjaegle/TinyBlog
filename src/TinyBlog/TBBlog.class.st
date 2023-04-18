Class {
	#name : #TBBlog,
	#superclass : #Object,
	#instVars : [
		'posts'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #TinyBlog
}

{ #category : #initialization }
TBBlog class >> current [ 

	"Answer the instance of the class"
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #'class initialization' }
TBBlog class >> initialize [ 

	self reset
]

{ #category : #'class initialization' }
TBBlog class >> reset [

	uniqueInstance := nil
]

{ #category : #initialization }
TBBlog >> initialize [

	super initialize.
	posts := OrderedCollection new.
]

{ #category : #initialization }
TBBlog >> removeAllPosts [ 


	posts := OrderedCollection new
]

{ #category : #initialization }
TBBlog >> size [ 

 ^ posts size 
]

{ #category : #initialization }
TBBlog >> writeBlogPost: aPost [


posts add: aPost
]
