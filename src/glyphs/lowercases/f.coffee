exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (21) + serifWidth + 15
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + serifHeight + serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					dirOut: 90 + 'deg'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 135 * width
					y: capHeight + overshoot / 2
					dirOut: 0 + 'deg'
					tensionIn: 1.1
					typeIn: 'smooth'
					expand:
						width: thickness * ( 40 / 85 )
						angle: - 139 + 'deg'
						distr: 0
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: 0 + 'deg'
					typeIn: 'line'
				1:
					x: contours[0].nodes[2].expandedTo[0].x + 135 * width
					y: capHeight - 70
					dirOut: 90 + 'deg'
					dirIn: 90 + 'deg'
				2:
					x: contours[1].nodes[1].x - 45 * serifBall
					y: contours[1].nodes[1].y - 45 * serifBall
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					typeOut: 'line'
					dirIn: 0 + 'deg'
					tensionIn: 1.2
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x + ( contours[1].nodes[2].x - contours[1].nodes[0].x ) * 0.2
					y: xHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 45 / 85 )
						angle: 90 + 'deg'
						distr: 1
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: xHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 45 / 85 )
						angle: 90 + 'deg'
						distr: 1
				2:
					x: spacingLeft - 115
					y: contours[2].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 10 / 85 )
						angle: 90 + 'deg'
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
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
