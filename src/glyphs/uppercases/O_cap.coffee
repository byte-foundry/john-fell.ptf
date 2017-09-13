exports.glyphs['O_cap'] =
	unicode: 'O'
	glyphName: 'O'
	characterName: 'LATIN CAPITAL LETTER O'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55 + (22)
		spacingRight: 50 * spacing + 55
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].x
			y: capHeight + diacriticHeight
			left: contours[0].nodes[0].expandedTo[0].x
			right: contours[0].nodes[2].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft
					y: capHeight * ( 375 / 750 )
					dirOut: 90 + 'deg'
					expand:
						width: thickness * ( 110 / 86 )
						distr: 0.25
						angle: 0
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) / 2 - 5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * contrast * ( 26 / 86 )
						angle: - 100 + 'deg'
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 360 + 250 * width # ( 665 + (100) ) * width
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					expand:
						width: thickness * ( 110 / 86 )
						distr: 0.25
						angle: -Math.PI
				3:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) / 2 - 15
					y: - overshoot
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * contrast * ( 26 / 86 )
						angle: - 101 + 180 + 'deg'
						distr: 0
