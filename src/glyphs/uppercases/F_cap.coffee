exports.glyphs['F_cap'] =
	unicode: 'F'
	glyphName: 'F'
	characterName: 'LATIN CAPITAL LETTER F'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
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
			x: 0
			y: 0
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
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
						angle: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: 305 + 250 * width + ( thickness / 2 - 43 )
					x: contours[0].nodes[0].expandedTo[1].x + 110 + 200 * width
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 20 / 100 ) * contrast
						distr: 0
						angle: -Math.PI / 2
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: contours[1].nodes[0].expand.width
						distr: 0
						angle: -Math.PI / 2
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: contours[2].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 28 / 100 ) * contrast
						distr: 0
						angle: Math.PI / 2
				1:
					# x: 235 + 250 * width
					x: contours[0].nodes[0].expandedTo[1].x + 200 * width + 40 - Math.max( 0, serifHeight * serifArc )
					y: capHeight * ( 385 / 750 ) * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: contours[2].nodes[0].expand.width
						distr: 0
						angle: Math.PI / 2
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].x + ( Math.tan( (7 * serifRotate) / 180 * Math.PI ) * ( thickness  * opticThickness * ( 20 / 100 ) * contrast * 0.5 ) )
					y: contours[1].nodes[0].expandedTo[0].y * 0.5 + contours[1].nodes[1].expandedTo[1].y * 0.5
					typeIn: 'line'
					typeOut: 'line'
				1:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
				2:
					x: contours[1].nodes[0].x - 10
					y: contours[1].nodes[0].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
				3:
					x: contours[1].nodes[0].x - 10
					y: contours[1].nodes[0].expandedTo[0].y * 0.5 + contours[1].nodes[1].expandedTo[1].y * 0.5
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
			id: 'bottomRight'
			class: 'lowerLeftStumpInside'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
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
		3:
			base: ['serif-horizontal', 'none']
			id: 'topright'
			class: 'upperStroke'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'skewX', - 7 * serifRotate + 'deg' ],
				[ 'translateX', ( Math.tan( (7 * serifRotate) / 180 * Math.PI ) * ( thickness * opticThickness * ( 20 / 100 ) * contrast ) ) ]
			)
			parameters:
				serifCurve: serifCurve + 10
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 25
				serifWidth: serifWidth + 30
		4:
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
		5:
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
