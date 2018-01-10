exports.glyphs['L_cap'] =
	unicode: 'L'
	glyphName: 'L'
	characterName: 'LATIN CAPITAL LETTER L'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (45) + serifWidth + 40
		spacingRight: 50 * spacing + 10 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].x
			y: capHeight + diacriticHeight
		1:
			x: contours[0].nodes[0].expandedTo[1].x + serifWidth + 85
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 85 + 250 * width
					y: 0
					dirOut: 0 + 'deg'
					expand:
						width: thickness * opticThickness * ( 20 / 100 )
						angle: -Math.PI / 2
						distr: 1
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: contours[1].nodes[0].expand.width
						distr: 1
						angle: -Math.PI / 2
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + ( serifHeight + serifCurve ) * ( 80 / 35 )
					y: contours[1].nodes[0].expand.width
					tensionOut: 1.5
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( serifHeight + serifCurve ) * ( 80 / 35 )
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				2:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[0].y
					typeOut: 'line'
				3:
					x: contours[1].nodes[1].x
					y: contours[2].nodes[0].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'bottomLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		2:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperRightStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		3:
			base: ['serif-horizontal', 'none']
			id: 'rightstroke'
			class: 'lowerStroke'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
				[ 'skewX', 10 * serifRotate + 'deg' ],
				[ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * opticThickness * ( 25 / 100 ) * contrast ) ) ]
			)
			parameters:
				serifCurve: serifCurve + 90
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 25
				serifWidth: serifWidth + 60
