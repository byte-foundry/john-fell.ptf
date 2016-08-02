exports.glyphs['bracketleft'] =
	unicode: '['
	glyphName: 'bracketleft'
	characterName: 'LEFT SQUARE BRACKET'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 105
		spacingRight: 50 * spacing + - 50
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
					x: spacingLeft + (7)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: - 195
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].x + 210
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: - 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[2].nodes[0].x + 210
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: - 90 + 'deg'
						distr: 1
					})
