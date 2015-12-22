exports.glyphs['eight'] =
	unicode: '8'
	ot:
		advanceWidth: contours[0].nodes[5].expandedTo[0].x + 40 * spacing
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
					x: contours[0].nodes[2].x + 8
					y: ( 410 / 750 ) * capHeight - (9)
					# dirOut: Math.min( 20, ( 40 * aperture - 20 * width ) ) + 'deg'
					dirOut: Math.min( 20, ( 40 - 20 * width ) ) + 'deg'
					expand: Object({
						width: thickness * ( 18 / 85 ) * contrast
						angle: - 90 + 'deg'
						distr: 0.5
					})
				1:
					x: 403 * width + (54)
					y: ( 590 / 750 ) * capHeight + (6)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 73 / 85 )
						angle: 6 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					expand: Object({
						width: thickness * ( 20 / 85 ) * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				3:
					x: 64 + (17)
					y: ( 580 / 750 ) * capHeight + (8)
					type: 'smooth'
					dirOut: 90 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: thickness * ( 75 / 85 )
						angle: 180 + 25 + 'deg'
						distr: 0.75
					})
				4:
					x: contours[0].nodes[8].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[8].expandedTo[0].x ) * 0.5
					y: contours[0].nodes[8].expandedTo[1].y + ( contours[0].nodes[0].expandedTo[0].y - contours[0].nodes[8].expandedTo[1].y ) * 0.5
					dirOut: Utils.lineAngle( contours[0].nodes[8].expandedTo[0].point, contours[0].nodes[0].expandedTo[1].point )
					dirOut: - ( 22 / 750 ) * capHeight + ( 10 * width - 10 ) + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: contours[0].nodes[4].dirOut - Math.PI / 2
						distr: 0.5
					})
				5:
					x: 437 * width + (49)
					y: ( 154 / 750 ) * capHeight + (28)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.4
					expand: Object({
						width: thickness * ( 75 / 85 )
						angle: 180 + 30 + 'deg'
						distr: 0.25
					})
				6:
					x: contours[0].nodes[2].x + 2
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 20 / 85 ) * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				7:
					x: 40 + (18)
					y: ( 174 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 74 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				8:
					x: contours[0].nodes[2].x - 20
					y: ( 396 / 750 ) * capHeight - (0)
					# dirIn: - 180 + Math.min( 20, ( 40 * aperture - 20 * width ) ) + 'deg'
					dirIn: - 180 + Math.min( 20, ( 40 - 20 * width ) ) + 'deg'
					expand: Object({
						width: thickness * ( 20 / 85 ) * contrast
						angle: - 90 + 'deg'
						distr: 0.5
					})
