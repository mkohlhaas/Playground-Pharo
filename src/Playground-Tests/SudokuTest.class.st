"
A SudokuTest is a test class for testing the behavior of Sudoku
"
Class {
	#name : #SudokuTest,
	#superclass : #TestCase,
	#instVars : [
		'puzzles'
	],
	#category : #'Playground-Tests'
}

{ #category : #tests }
SudokuTest >> testSodukos [

	self
		shouldnt: (puzzles do: [ :board | (Sudoku with: board) solve ])
		raise: Exception
]
