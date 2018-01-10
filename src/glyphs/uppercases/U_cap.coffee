# TODO: spur + serifCurve
exports.glyphs['U_cap'] =
	unicode: 'U'
	glyphName: 'U'
	characterName: 'LATIN CAPITAL LETTER U'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5 + (25) + serifWidth + 40
		spacingRight: 50 * spacing + 5 + serifWidth + 45
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.min( 170, ( 220 / 750 ) * capHeight )
					y: 180 + ( 40 / 750 ) * capHeight * width
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				2:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * Math.min( 0.4, 0.25 * width )
					y: - overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 76 / 85 ) * opticThickness
						angle: 58 + 'deg'
						distr: 0
				3:
					x: contours[1].nodes[0].expandedTo[0].x
					y: 120 - (4) + ( 40 / 750 ) * capHeight * width
					typeOut: 'smooth'
					dirIn: - 115 + 'deg'
					expand:
						width: thickness * ( 45 / 85 ) * opticThickness
						angle: 90 + 'deg'
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 85 + 250 * width + (25)
					y: Math.max( 0, serifHeight * serifArc ) + ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 100/85 * opticThickness / 2 ) )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
						angle: 0
				1:
					x: contours[1].nodes[0].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
						angle: 0
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: 0
					typeOut: 'line'
					dirIn: Utils.lineAngle({x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}, {x: contours[2].nodes[4].x, y: contours[2].nodes[4].y}) - Math.PI / 12 * spurHeight * -serifArc / 1.5
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y + 10
					typeOut: 'line'
				2:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[0].y + 10
					typeOut: 'line'
				3:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
				4:
					x: ( contours[1].nodes[0].expandedTo[0].x + contours[1].nodes[0].expandedTo[1].x ) / 2
					y: - serifHeight * serifArc
					dirOut: Math.PI / 15 * spurHeight * Math.abs(serifArc / 1.5)
					typeIn: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'skewY', 15 * spurHeight + 'deg' ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperRightStumpInside'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				['scaleY', -1]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		2:
			base: ['serif-vertical', 'none']
			id: 'topright2'
			class: 'upperleftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				['scaleY', -1]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
