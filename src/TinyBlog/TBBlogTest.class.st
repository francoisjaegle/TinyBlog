Class {
	#name : #TBBlogTest,
	#superclass : #TestCase,
	#instVars : [
		'blog',
		'post',
		'first'
	],
	#category : #'TinyBlog-Tests'
}

{ #category : #initialization }
TBBlogTest >> setUp [

	blog := TBBlog current.
	blog removeAllPosts.
	
	first := TBPost title: 'A title' text: 'A text' category: 'First Category'.
	blog writeBlogPost: first.
	
	post := (TBPost title: 'Another title' text: 'Another text'  category: 'Second Category' ) beVisible
]

{ #category : #action }
TBBlogTest >> tearDown [

	TBBlog reset
]

{ #category : #action }
TBBlogTest >> testAddBlogPost [ 

	blog writeBlogPost: post.
	self assert: blog size equals: 2
	
]

{ #category : #action }
TBBlogTest >> testRemoveAllPost [ 

	blog removeAllPosts.
	self assert: blog size equals: 0
	
]

{ #category : #action }
TBBlogTest >> testsize [

	self assert: blog size equals: 1
	
]
