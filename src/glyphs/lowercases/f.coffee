exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					y: 0
					dirOut: Math.PI / 2
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					dirOut: Math.PI / 2
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 135 * width
					y: capHeight + overshoot / 2
					dirIn: 0
					tensionIn: 1.1
					expand:
						width: thickness * ( 40 / 85 )
						angle:( - 139 ) / 180 * Math.PI
						distr: 0
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: 0
					typeIn: 'line'
				1:
					x: contours[0].nodes[2].expandedTo[0].x + 135 * width
					y: capHeight - 70
					dirOut: Math.PI / 2
					dirIn: Math.PI / 2
				2:
					x: contours[1].nodes[1].x - 45 * serifBall
					y: contours[1].nodes[1].y - 45 * serifBall
					dirOut: 0
					dirIn: 0
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					typeOut: 'line'
					dirIn: 0
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
						angle: Math.PI / 2
						distr: 1
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: xHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 45 / 85 )
						angle: Math.PI / 2
						distr: 1
				2:
					x: spacingLeft - 115
					y: contours[2].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 10 / 85 )
						angle: Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			class: 'lowerLeftStump'
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			class: 'lowerRightStump'
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
