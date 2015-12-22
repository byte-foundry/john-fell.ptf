exports.glyphs['o'] =
	unicode: 'o'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 45 * spacing + (19)
		spacingRight: 45 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft
					y: xHeight * ( 250 / 500 )
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 95 / 86 )
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 26 / 86 ) * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: 200 + 250 * width + (70)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 95 / 86 )
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					expand: Object({
						width: thickness * ( 26 / 86 ) * contrast
						angle: 90 + 'deg'
						distr: 0
					})
