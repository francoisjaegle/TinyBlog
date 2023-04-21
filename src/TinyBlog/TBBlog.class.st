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

{ #category : #accessing }
TBBlog class >> createDemoPosts [
self current
	writeBlogPost:((TBPost title: 'Salut dans Tiny Blog' text: 'Bon, voila Tiny Bolg, un espèce de machin Blog pour progresser en Pharo'  category: 'TinyBlog' ) visible: true);
	writeBlogPost: ((TBPost title: 'Rapport sur la course "Sprint Pharo". ' text: 'Friday June 12 il y a eu un sprint Pharo / Moose dojo. C était un super évènement, il y avait plus de 15 sprinters ultra motivés. Un énorme travail a été accompli en partie grace aux friandises, gateaux et autres délicieuses patisseries présentes sur place' category: 'Pharo') visible: true );
	writeBlogPost: ((TBPost title: 'Pré-disponibilité du package Brick, en-tête de Bloc. ' text: 'Bon ben, on annonce avec plaisir la prochaine disponibilité de Brick. Qu est-ce que brick: cest un nouvel ensemble de widget (gadgets window) entièrement créé à partir de zéro et qui se situent au dessus de Bloc. Brick a été développé principalement par Alex Syrel (accompagné d Alain Plantec, Andrei Chris et moi même) le boulot est sponsorisé par ESUG.
	Brick s inscrit dans la démarche de développement des outils "Glamour" et sera à la base de la nouvelle versions des outils de développement ' category: 'Pharo' ) visible: true);
	writeBlogPost: ((TBPost title: 'La triste histoire des Blog Posts Unclassified' text: 'Tellement triste que je peux même lire ça' ) visible: true);
	writeBlogPost: ((TBPost title: 'Développer en Pharo sur raspberry Pi' text: 'Punaise ! le hardware est devenu si bon marché et du coup plein de petits appareils tel que fameux Raspberry Pi offre une puissance de calcul qui autrefois n eéatit disponible que sur un PC.' category: 'Pharo'  ) visible: true)	

]

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

{ #category : #accessing }
TBBlog >> allBlogPosts [

	^ posts 
]

{ #category : #accessing }
TBBlog >> allBlogPostsFromCategory: aCategory [

	^ posts select: [ :p | p category = aCategory ]
]

{ #category : #accessing }
TBBlog >> allVisibleBlogPosts [

	^ posts select: [ :p | p isVisible ]
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
