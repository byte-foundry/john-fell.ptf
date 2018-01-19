exports.glyphs['R_cap'] =
	unicode: 'R'
	glyphName: 'R'
	characterName: 'LATIN CAPITAL LETTER R'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (25) + serifWidth + 40
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					dirOut: Math.PI / 2
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: Math.PI / 2
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
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					dirOut: 0
					# typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 20 / 85 )
						distr: 0
						angle: -Math.PI / 2
				1:
					x: contours[1].nodes[2].expandedTo[1].x - 100 - 50 * width
					y: capHeight
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * opticThickness * ( 36 / 85 )
						angle:( - 146 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 245 * width + (93)
					y: capHeight * ( ( 555 - (12) ) / 750 )
					dirOut: - Math.PI / 2
					tensionOut: 1.15
					typeIn: 'smooth'
					expand:
						width: thickness * opticThickness * ( 112 / 85 )
						angle: 170 / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[2].expandedTo[1].x - 100 - 50 * width
					y: capHeight * ( 380 / 750 )
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * opticThickness * ( 25 / 85 )
						distr: 1
						angle: Math.PI / 2
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[3].y
					dirOut: Math.PI
					typeOut: 'line'
					expand:
						width: contours[1].nodes[3].expand.width
						distr: 1
						angle: Math.PI / 2
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x + Math.min( 90 + thickness, 175 * width ) - (65 - serifWidth)
					y: 0
					typeIn: 'smooth'
					tensionOut: 1.6
					expand:
						width: thickness * opticThickness * ( serifHeight / 85 )
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[2].nodes[2].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[0].x - contours[2].nodes[2].expandedTo[0].x ) * 0.5
					y: ( ( (55 + serifHeight) + (5) ) / 750 ) * capHeight
					dirIn: Utils.lineAngle({x: contours[2].nodes[1].expandedTo[1].x, y: contours[2].nodes[1].expandedTo[1].y},{x:  contours[2].nodes[2].expandedTo[1].x, y:  contours[2].nodes[2].expandedTo[1].y})
					tensionIn: 1.6
					typeOut: 'smooth'
					expand:
						width: thickness * opticThickness * ( 117 / 85 )
						angle: 0
						distr: 0.25
				2:
					x: contours[1].nodes[3].expandedTo[0].x - ( 10 / 85 ) * thickness
					y: contours[1].nodes[3].expandedTo[0].y + ( contours[1].nodes[3].expandedTo[1].y - contours[1].nodes[3].expandedTo[0].y ) * 0.5
					dirOut: 0
					typeOut: 'line'
					expand:
						width: thickness * opticThickness * ( 95 / 85 )
						angle:( 11 ) / 180 * Math.PI
						distr: 0
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
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				['scaleY', -1]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		2:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'lowerLeftStumpInside'
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
