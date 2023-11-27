"
b := #( 0 1 6 4 0 0 0 0 0 
        2 0 0 0 0 9 0 0 0 
	     4 0 0 0 0 0 0 6 2 
	     0 7 0 2 3 0 1 0 0 
	     1 0 0 0 0 0 0 0 3 
	     0 0 3 0 8 7 0 4 0 
	     9 6 0 0 0 0 0 0 5 
	     0 0 0 8 0 0 0 0 7 
	     0 0 0 0 0 6 8 2 0 ).

""b1 := b collect: [ :n | n = 0 ifTrue: [ nil ] ifFalse: [ n ] ]""

m1 := Array2D rows: 9 columns: 9 contents: b

""for findMostPromisingCell""
(1 to: 9 * 9) collect: [ :i | (rows at: i) value asSet union: (cols at: i) value asSet union: (blocks at: i) value asSet ].

""blocks""
b1 := m1 atRows: #(1 2 3) columns: #(1 2 3).
b2 := m1 atRows: #(1 2 3) columns: #(4 5 6).
b3 := m1 atRows: #(1 2 3) columns: #(7 8 9).
b4 := m1 atRows: #(4 5 6) columns: #(1 2 3).
b5 := m1 atRows: #(4 5 6) columns: #(4 5 6).
b6 := m1 atRows: #(4 5 6) columns: #(7 8 9).
b7 := m1 atRows: #(7 8 9) columns: #(1 2 3).
b8 := m1 atRows: #(7 8 9) columns: #(4 5 6).
b9 := m1 atRows: #(7 8 9) columns: #(7 8 9).

""rows""
r1 := m1 atRows: #(1) columns: #(1 2 3 4 5 6 7 8 9).

r2 := m1 atRows: #(2) columns: #(1 2 3 4 5 6 7 8 9).
r3 := m1 atRows: #(3) columns: #(1 2 3 4 5 6 7 8 9).
r4 := m1 atRows: #(4) columns: #(1 2 3 4 5 6 7 8 9).
r5 := m1 atRows: #(5) columns: #(1 2 3 4 5 6 7 8 9).
r6 := m1 atRows: #(6) columns: #(1 2 3 4 5 6 7 8 9).
r7 := m1 atRows: #(7) columns: #(1 2 3 4 5 6 7 8 9).
r8 := m1 atRows: #(8) columns: #(1 2 3 4 5 6 7 8 9).
r9 := m1 atRows: #(9) columns: #(1 2 3 4 5 6 7 8 9).

r1 asSet union: r2 asSet

""columns""
c1 := m1 transposed atRows: #(1) columns: #(1 2 3 4 5 6 7 8 9).
c2 := m1 transposed atRows: #(2) columns: #(1 2 3 4 5 6 7 8 9).
c3 := m1 transposed atRows: #(3) columns: #(1 2 3 4 5 6 7 8 9).
c4 := m1 transposed atRows: #(4) columns: #(1 2 3 4 5 6 7 8 9).
c5 := m1 transposed atRows: #(5) columns: #(1 2 3 4 5 6 7 8 9).
c6 := m1 transposed atRows: #(6) columns: #(1 2 3 4 5 6 7 8 9).
c7 := m1 transposed atRows: #(7) columns: #(1 2 3 4 5 6 7 8 9).
c8 := m1 transposed atRows: #(8) columns: #(1 2 3 4 5 6 7 8 9).
c9 := m1 transposed atRows: #(9) columns: #(1 2 3 4 5 6 7 8 9).

Use class variables (p. 149):
rows := {[r1] . [r1] . [r1] . [r1] . [r1] . [r1] . [r1] . [r1] . [r1] .
         [r2] . [r2] . [r2] . [r2] . [r2] . [r2] . [r2] . [r2] . [r2] .
         [r3] . [r3] . [r3] . [r3] . [r3] . [r3] . [r3] . [r3] . [r3] .
         [r4] . [r4] . [r4] . [r4] . [r4] . [r4] . [r4] . [r4] . [r4] .
         [r5] . [r5] . [r5] . [r5] . [r5] . [r5] . [r5] . [r5] . [r5] .
         [r6] . [r6] . [r6] . [r6] . [r6] . [r6] . [r6] . [r6] . [r6] .
         [r7] . [r7] . [r7] . [r7] . [r7] . [r7] . [r7] . [r7] . [r7] .
         [r8] . [r8] . [r8] . [r8] . [r8] . [r8] . [r8] . [r8] . [r8] .
         [r9] . [r9] . [r9] . [r9] . [r9] . [r9] . [r9] . [r9] . [r9] }.

cols := {[c1] . [c2] . [c3] . [c4] . [c5] . [c6] . [c7] . [c8] . [c9] .
         [c1] . [c2] . [c3] . [c4] . [c5] . [c6] . [c7] . [c8] . [c9] .
         [c1] . [c2] . [c3] . [c4] . [c5] . [c6] . [c7] . [c8] . [c9] .
         [c1] . [c2] . [c3] . [c4] . [c5] . [c6] . [c7] . [c8] . [c9] .
         [c1] . [c2] . [c3] . [c4] . [c5] . [c6] . [c7] . [c8] . [c9] .
         [c1] . [c2] . [c3] . [c4] . [c5] . [c6] . [c7] . [c8] . [c9] .
         [c1] . [c2] . [c3] . [c4] . [c5] . [c6] . [c7] . [c8] . [c9] .
         [c1] . [c2] . [c3] . [c4] . [c5] . [c6] . [c7] . [c8] . [c9] .
         [c1] . [c2] . [c3] . [c4] . [c5] . [c6] . [c7] . [c8] . [c9] }.

blocks := {[b1] . [b1] . [b1] . [b2] . [b2] . [b2] . [b3] . [b3] . [b3] .
           [b1] . [b1] . [b1] . [b2] . [b2] . [b2] . [b3] . [b3] . [b3] .
           [b1] . [b1] . [b1] . [b2] . [b2] . [b2] . [b3] . [b3] . [b3] .
           [b4] . [b4] . [b4] . [b5] . [b5] . [b5] . [b6] . [b6] . [b6] .
           [b4] . [b4] . [b4] . [b5] . [b5] . [b5] . [b6] . [b6] . [b6] .
           [b4] . [b4] . [b4] . [b5] . [b5] . [b5] . [b6] . [b6] . [b6] .
           [b7] . [b7] . [b7] . [b8] . [b8] . [b8] . [b9] . [b9] . [b9] .
           [b7] . [b7] . [b7] . [b8] . [b8] . [b8] . [b9] . [b9] . [b9] .
           [b7] . [b7] . [b7] . [b8] . [b8] . [b8] . [b9] . [b9] . [b9] }.

OrderedCollection new. -> store (position, {1,2,3}) sort by size of {1,2,3 }) then take first one -> this is the most promising prospect

rows at: 1

Sudoku keeps an internal queue.

s := Sudoku with: b1
s solve
 b := pop queue
 b isFull ifTrue: [ ^ m1 ]
           ifFalse: [ 
	[e.g.] (position, {1,2,3}) := b findMostPromisingProspect.
	do: {1,2,3} [ :n | queue enqueue: (b at: position put: n) ].
	 s solve
	 ]

(1 to: 9) asSet difference: ((#((nil 1 2 4 nil nil 5 9 8) (nil nil 1 3 4)) inject: Set empty into: [ :acc :item | acc union: item]) select: [ :item | item ~= 0 ])
"
Class {
	#name : #ManifestPlayground,
	#superclass : #PackageManifest,
	#category : #'Playground-Manifest'
}
