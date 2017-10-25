exports.glyphs['H_cap'] =
	unicode: 'H'
	glyphName: 'H'
	characterName: 'LATIN CAPITAL LETTER H'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (10) + 40
		spacingRight: 50 * spacing + 40 + serifWidth + 40
	anchors:
		0:
			x: contours[1].nodes[0].x + ( contours[1].nodes[1].x - contours[1].nodes[0].x ) / 2
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
					x: spacingLeft + serifWidth + 40 + (11)
					y: 0 + Math.max(0, serifHeight * serifArc)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max(0, serifHeight * serifArc)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0.25
						angle: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: capHeight * ( 383 / 750 )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 26 / 86 ) * contrast
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[2].nodes[0].x
					y: capHeight * ( 383 / 750 )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 26 / 86 ) * contrast
						angle: Math.PI / 2
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 200 + 235 * width - (25)
					y: 0 + Math.max(0, serifHeight * serifArc)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0.75
						angle: 0
				1:
					x: contours[2].nodes[0].x
					y: capHeight - Math.max(0, serifHeight * serifArc)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0.75
						angle: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
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
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
			transformOrigin: contours[2].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		6:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
			transformOrigin: contours[2].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		7:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
