exports.glyphs['quotesingle'] =
	unicode: '\''
	glyphName: 'quotesingle'
	characterName: 'APOSTROPHE'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 65
		spacingRight: 50 * spacing + 65 + (7/85) * thickness
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot / 2
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 5 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: spacingLeft + (7/85) * thickness + (39/85) * thickness
					y: contours[0].nodes[0].expandedTo[0].y - Math.max(
						thickness * ( 78 / 85 ),
						40
					)
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: Math.max(
							thickness * ( 78 / 85 ),
							40
						)
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y - 160
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 12 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
					})
