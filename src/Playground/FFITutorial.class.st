Class {
	#name : #FFITutorial,
	#superclass : #Object,
	#category : #Playground
}

{ #category : #'as yet unclassified' }
FFITutorial class >> createIndex: excludeDeclarationsFromPCH display: displayDiagnostics [

	^ self
		  ffiCall:
			  #( void * clang_createIndex #( int excludeDeclarationsFromPCH
			        , int displayDiagnostics ) )
		  library: 'libclang.so'
]

{ #category : #'as yet unclassified' }
FFITutorial class >> parseTranslationUnit: aFilename index: anIndex [

	^ self
		  ffiCall:
			  #( void * clang_parseTranslationUnit #( void * anIndex , char
			        * aFilename , NULL , 0 , NULL , 0 , 0 ) )
		  library: 'libclang.so'

	"
    CXIndex CIdx, const char *source_filename,
    const char *const *command_line_args, int num_command_line_args,
    struct CXUnsavedFile *unsaved_files, unsigned num_unsaved_files,
    unsigned options);"
]
