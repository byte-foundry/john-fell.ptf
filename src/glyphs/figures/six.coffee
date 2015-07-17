exports.glyphs['six'] =
	unicode: '6'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + 15 * spacing
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
					x: 545 + (5)
					y: capHeight
					dirOut: - 168 + 'deg'
					expand: Object({
						width: thickness * ( 13 / 85 )
						angle: - 76 + 'deg'
						distr: 0
					})
				1:
					x: 60 + (21)
					y: capHeight * ( 280 / 750 )
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 96 / 85 )
						angle: - 28 + 'deg'
						distr: 0.25
					})
				2:
					x: 300 + (0)
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 ) * contrast
						angle: 101 + 'deg'
						distr: 0
					})
				3:
					x: 425 + (75)
					y: capHeight * ( 240 / 750 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 - 3 + 'deg'
						distr: 0.25
					})
				4:
					x: 300 + (0)
					y: xHeight * ( 460 / 500 )
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 27 / 85 ) * contrast
						angle: - 111 + 'deg'
						distr: 0.25
					})
				5:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: 90 + 'deg'
					expand: Object({
						width: thickness * ( 29 / 85 )
						angle: 180 + 121 + 'deg'
						distr: 1
					})
