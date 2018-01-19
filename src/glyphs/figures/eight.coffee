# TODO: spacing
exports.glyphs['eight'] =
	unicode: '8'
	glyphName: 'eight'
	characterName: 'DIGIT EIGHT'
	ot:
		advanceWidth: contours[0].nodes[5].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
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
					# dirOut: Math.min( 20,( ( 40 * aperture - 20 * width ) ) ) / 180 * Math.PI
					dirOut: Math.min( 20,( ( 40 - 20 * width ) ) ) / 180 * Math.PI
					expand:
						width: thickness * ( 18 / 85 ) * contrast
						angle: - Math.PI / 2
						distr: 0.5
				1:
					x: contours[0].nodes[3].expandedTo[1].x + 200 * width + 210 - (17)
					y: ( 590 / 750 ) * capHeight + (6)
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 73 / 85 )
						angle:( 6 ) / 180 * Math.PI
						distr: 0.75
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 85 ) * contrast
						angle: 180 - Math.PI / 2
						distr: 1
				3:
					x: contours[0].nodes[7].x + 24
					y: ( 580 / 750 ) * capHeight + (8)
					typeIn: 'smooth'
					dirOut: Math.PI / 2
					tensionOut: 1.1
					expand:
						width: thickness * ( 75 / 85 )
						angle:( 180 + 25 ) / 180 * Math.PI
						distr: 0.75
				4:
					x: contours[0].nodes[8].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[8].expandedTo[0].x ) * 0.5
					y: contours[0].nodes[8].expandedTo[1].y + ( contours[0].nodes[0].expandedTo[0].y - contours[0].nodes[8].expandedTo[1].y ) * 0.5
					# dirOut: Utils.lineAngle({x: contours[0].nodes[8].expandedTo[0].x, y: contours[0].nodes[8].ey},{x:  contours[0].nodes[0].x, y:  contours[0].nodes[0].expandedTo[1].y}.expandedTo[1] )
					dirOut: (- ( 22 / 750 ) * capHeight + ( 10 * width - 10 )) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness
						angle: contours[0].nodes[4].dirOut - Math.PI / 2
						distr: 0.5
				5:
					x: contours[0].nodes[7].expandedTo[0].x + 200 * width + 260 - (14)
					y: ( 154 / 750 ) * capHeight + (28)
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					tensionIn: 1.4
					expand:
						width: thickness * ( 75 / 85 )
						angle: 180 + 30
						distr: 0.25
				6:
					x: contours[0].nodes[2].x + 2
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 85 ) * contrast
						angle: Math.PI / 2
						distr: 0
				7:
					x: spacingLeft + (18)
					y: ( 174 / 750 ) * capHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 74 / 85 )
						angle: 0
						distr: 0.25
				8:
					x: contours[0].nodes[2].x - 20
					y: ( 396 / 750 ) * capHeight - (0)
					# dirIn: - 180 + Math.min( 20,( ( 40 * aperture - 20 * width ) ) ) / 180 * Math.PI
					dirIn: (- 180 + Math.min( 20, ( 40 - 20 * width ) )) / 180 * Math.PI
					expand:
						width: thickness * ( 20 / 85 ) * contrast
						angle: - Math.PI / 2
						distr: 0.5
