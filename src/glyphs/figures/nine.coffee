exports.glyphs['nine'] =
	unicode: '9'
	glyphName: 'nine'
	characterName: 'DIGIT NINE'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + 40 * spacing
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 10 * spacing + (10)
		spacingRight: 10 * spacing
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 20
					y: - 230
					dirOut: 12 + 'deg'
					expand: Object({
						width: thickness * ( 12 / 85 )
						angle: 104 + 'deg'
						distr: 0
					})
				1:
					x: 515 - (21)
					y: ( 220 / 500 ) * xHeight
					dirOut: 90 + 'deg'
					tensionIn: 0.9
					type: 'smooth'
					expand: Object({
						width: thickness * ( 96 / 85 )
						angle: 152 + 'deg'
						distr: 0.25
					})
				2:
					x: 275
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: - 78 + 'deg'
						distr: 0
					})
				3:
					x: 50 + (22)
					y: ( 275 / 500 ) * xHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 90 / 85 )
						angle: - 3 + 'deg'
						distr: 0.25
					})
				4:
					x: 275
					y: ( 40 / 500 ) * xHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 27 / 85 )
						angle: 68 + 'deg'
						distr: 0
					})
				5:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: - 90 + 'deg'
					tensionIn: 0.9
					type: 'smooth'
					expand: Object({
						width: thickness * ( 27 / 85 )
						angle: 180 - 23 + 'deg'
						distr: 1
					})
