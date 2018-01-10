exports.glyphs['E_cap'] =
	unicode: 'E'
	glyphName: 'E'
	characterName: 'LATIN CAPITAL LETTER E'
	ot:
		advanceWidth: contours[3].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (25) + serifWidth + 40
		spacingRight: 50 * spacing + 40 + serifWidth / 2
		serifCurve: serifCurve + 55
		serifWidth: serifWidth + 40
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						angle: 0 + 'deg'
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						angle: 0 + 'deg'
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						angle: - 90 + 'deg'
						width: thickness * opticThickness * ( 25 / 100 ) * contrast
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 110 + 200 * width
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						angle: - 90 + 'deg'
						width: thickness * opticThickness * ( 25 / 100 ) * contrast
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: contours[2].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						angle: 90 + 'deg'
						width: thickness * opticThickness * ( 28 / 100 ) * contrast
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 200 * width + 50 - Math.max( 0, serifHeight * serifArc )
					y: capHeight * ( 385 / 750 ) * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						angle: 90 + 'deg'
						width: contours[2].nodes[0].expand.width
						distr: 0
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						angle: - 90 + 'deg'
						# width: Math.max( serifHeight, thickness * opticThickness * ( 20 / 100 ) ) // Fit the thickness to the serifHeight
						width: thickness * opticThickness * ( 25 / 100 ) * contrast
						distr: 1
				1:
					x: contours[1].nodes[0].x + 135 + 200 * width - Math.max( 0, serifHeight * serifArc )
					y: contours[3].nodes[0].y
					dirOut: 0 + 'deg'
					expand:
						angle: - 90 + 'deg'
						width: thickness * opticThickness * ( 25 / 100 ) * contrast
						distr: 1
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: Math.min(
						contours[0].nodes[0].expandedTo[1].x + ( serifHeight + serifCurve ) * ( 80 / 35 ),
						Math.max(
							contours[3].nodes[0].expandedTo[1].x,
							contours[3].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 )
						)
					)
					y: contours[3].nodes[0].expand.width
					tensionOut: 1.5
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( serifHeight + serifCurve ) * ( 80 / 35 )
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				2:
					x: contours[4].nodes[1].x
					y: contours[4].nodes[0].y
					typeOut: 'line'
				3:
					x: contours[4].nodes[0].x
					y: contours[4].nodes[0].y
					typeOut: 'line'
		5:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[3].nodes[1].x + ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness  * opticThickness * ( 25 / 100 ) * contrast * 0.5 ) )
					y: contours[3].nodes[1].expandedTo[0].y * 0.5 + contours[3].nodes[1].expandedTo[1].y * 0.5
					typeIn: 'line'
					typeOut: 'line'
				1:
					x: contours[3].nodes[1].x
					y: contours[3].nodes[1].expandedTo[1].y
					typeIn: 'line'
					typeOut: 'line'
				2:
					x: contours[3].nodes[1].x - 10
					y: contours[3].nodes[1].expandedTo[1].y
					typeIn: 'line'
					typeOut: 'line'
				3:
					x: contours[3].nodes[1].x - 10
					y: contours[3].nodes[1].expandedTo[0].y * 0.5 + contours[3].nodes[1].expandedTo[1].y * 0.5
					typeIn: 'line'
					typeOut: 'line'
		6:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].x + ( Math.tan( (7 * serifRotate) / 180 * Math.PI ) * ( thickness  * opticThickness * ( 25 / 100 ) * contrast * 0.5 ) )
					y: contours[1].nodes[1].expandedTo[0].y * 0.5 + contours[1].nodes[1].expandedTo[1].y * 0.5
					typeIn: 'line'
					typeOut: 'line'
				1:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
				2:
					x: contours[1].nodes[1].x - 10
					y: contours[1].nodes[1].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
				3:
					x: contours[1].nodes[1].x - 10
					y: contours[1].nodes[1].expandedTo[0].y * 0.5 + contours[1].nodes[1].expandedTo[1].y * 0.5
					typeIn: 'line'
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'topright'
			class: 'upperStroke'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'skewX', - 7 * serifRotate + 'deg' ],
				[ 'translateX', ( Math.tan( (7 * serifRotate) / 180 * Math.PI ) * ( thickness * opticThickness * ( 25 / 100 ) * contrast ) ) ]
			)
			parameters:
				serifCurve: serifCurve + 10
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 25
				serifWidth: serifWidth + 30
		3:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			class: 'upperMiddleStroke'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					reversed: true
			parameters:
				serifCurve: serifCurve + 10
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 25
				serifWidth: serifWidth + 30
		4:
			base: ['serif-horizontal', 'none']
			id: 'middlebottom'
			class: 'lowerMiddleStroke'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 10
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 25
				serifWidth: serifWidth + 30
		5:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			class: 'lowerStroke'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[0]
					noneAnchor: contours[3].nodes[1].expandedTo[0]
					opposite: contours[3].nodes[1].expandedTo[1]
					scaleX: -1
			transformOrigin: contours[3].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
				[ 'skewX', 10 * serifRotate + 'deg' ],
				[ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * opticThickness * ( 25 / 100 ) * contrast ) ) ]
			)
			parameters:
				serifCurve: serifCurve + 10
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 25
				serifWidth: serifWidth + 30
