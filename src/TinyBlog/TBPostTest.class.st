Class {
	#name : #TBPostTest,
	#superclass : #TestCase,
	#category : #'TinyBlog-Test'
}

{ #category : #tests }
TBPostTest >> testPostIsCreatedCorrectly [

	 | post |
	post := TBPost 
		title: 'Salut de TinyBlog'
		text: 'TinyBlog est un petit machin qui s éxécute en PHARO.'
		category: 'TinyBlog'.
	self assert: post title equals: 'Salut de TinyBlog'.
	self assert: post text equals: 'TinyBlog est un petit machin qui s éxécute en PHARO.'.
]

{ #category : #tests }
TBPostTest >> testWithouCategoryIsUnclassified [

	 | post |
	post := TBPost 
		title: 'Salut de TinyBlog'
		text: 'TinyBlog est un petit machin qui s éxécute en PHARO.'.
	self assert: post title equals: 'Salut de TinyBlog'.
	self assert: post text equals: 'TinyBlog est un petit machin qui s éxécute en PHARO.'.
	self assert: post isUnclassified.
	self deny: post isVisible
]
