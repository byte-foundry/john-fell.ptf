exports.glyphs['T_cap'] =
	unicode: 'T'
	glyphName: 'T'
	characterName: 'LATIN CAPITAL LETTER T'
	ot:
		advanceWidth: anchors[2].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 55
	anchors:
		0:
			x: contours[0].nodes[0].x
			y: capHeight + diacriticHeight
		1:
			x: spacingLeft
			y: capHeight
		2:
			x: spacingLeft + 465 + 200 * width
			y: capHeight
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
					x: anchors[1].x + ( anchors[2].x - anchors[1].x ) / 2
					y: 0
					dirOut: Math.PI / 2
					typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 100 / 85 )
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: Math.PI / 2
					typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 100 / 85 )
						angle: 0
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[2].x - Math.max( 0, serifHeight * serifArc )
					y: capHeight
					dirOut: 0
					typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 25 / 85 )
						angle: Math.PI / 2
						distr: 1
				1:
					x: anchors[1].x + Math.max( 0, serifHeight * serifArc )
					y: capHeight
					dirOut: 0
					typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 25 / 85 )
						angle: Math.PI / 2
						distr: 1
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
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				['scaleX', -1]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		2:
			base: ['serif-horizontal', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				['scaleY', -1]
				['scaleX', -1]
				[ 'skewX',( 22 * serifRotate ) / 180 * Math.PI ],
			)
			parameters:
				serifMedian: serifMedian * 0.2
				serifCurve: serifCurve + 66
				serifWidth: serifWidth - 20
				serifHeight: serifHeight + 40
		3:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				['scaleX', -1]
				[ 'skewX',( 22 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX', -( Math.tan( (22 * serifRotate) / 180 * Math.PI ) * ( thickness * opticThickness * ( 25 / 100 ) * contrast ) ) ]
			)
			parameters:
				serifWidth: serifWidth + 60
				serifCurve: serifCurve + 70
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 25
		4:
			base: ['serif-horizontal', 'none']
			id: 'topright3'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				['scaleY', -1],
				[ 'skewX',( -22 * serifRotate ) / 180 * Math.PI ]
			)
			parameters:
				serifMedian: serifMedian * 0.2
				serifCurve: serifCurve + 66
				serifWidth: serifWidth - 20
				serifHeight: serifHeight + 40
		5:
			base: ['serif-horizontal', 'none']
			id: 'middletop2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'skewX',( -22 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX',  (Math.tan( (22 * serifRotate) / 180 * Math.PI ) * ( thickness * opticThickness * ( 25 / 100 ) * contrast ) ) ]
			)
			parameters:
				serifWidth: serifWidth + 60
				serifCurve: serifCurve + 70
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 25
