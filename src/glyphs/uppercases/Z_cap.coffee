exports.glyphs['Z_cap'] =
	unicode: 'Z'
	glyphName: 'Z'
	characterName: 'LATIN CAPITAL LETTER Z'
	ot:
		advanceWidth: contours[2].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 25
		spacingRight: 50 * spacing + 10 + serifWidth / 2 * serifRotate
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + 200 * width + 385 + (0)
					y: capHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 20 / 85 )
						angle: - Math.PI / 2
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[0].x + 45 + (0)
					y: capHeight
					typeIn: 'line'
					expand:
						width: thickness * ( 28 / 85 )
						angle: - Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					typeOut: 'line'
					expand:
						width: thickness * ( 20 / 85 )
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].x - 4
					y: 0
					typeIn: 'line'
					expand:
						width: thickness * ( 30 / 85 )
						angle: Math.PI / 2
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: thickness * ( 105 / 85 )
						angle: ( Math.PI / 2 ) + Math.acos( (thickness * ( 20 / 85 )) / (thickness * ( 105 / 85 )) )
						distr: 1
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeIn: 'line'
					expand:
						width: thickness * ( 95 / 85 )
						angle: ( Math.PI / 2 ) + Math.acos( (thickness * ( 20 / 85 )) / (thickness * ( 95 / 85 )) )
						distr: 0
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + 10
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: contours[0].nodes[1].expandedTo[1].x - Math.tan( (5 * serifRotate) / 180 * Math.PI ) * ( thickness * opticThickness * ( 29 / 85 ))
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[0].nodes[1].expandedTo[1].x + 10
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x - 10
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: contours[1].nodes[1].expandedTo[1].x - Math.tan( (-13 * serifRotate) / 180 * Math.PI ) * ( thickness * opticThickness * ( 30 / 85 ))
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[1].nodes[1].expandedTo[1].x - 10
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
	components:
		0:
			base: ['serif-hz-oblique-obtuse', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'skewX',( 5 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX',-( Math.tan( (5 * serifRotate) / 180 * Math.PI ) * ( thickness * opticThickness * ( 28 / 85 )) ) ]
			)
			parameters:
				serifCurve: serifCurve + 90
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 25
				serifWidth: serifWidth + 60
		1:
			base: ['serif-hz-oblique-obtuse', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'scaleY', -1 ]
				[ 'skewX',( 13 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX', -( Math.tan( (-13 * serifRotate) / 180 * Math.PI ) * ( thickness * opticThickness * (  30 / 85 )) ) ]
			)
			parameters:
				serifCurve: serifCurve + 90
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 25
				serifWidth: serifWidth + 60
