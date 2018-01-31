# todo: thickness
exports.glyphs['comma'] =
	unicode: ','
	glyphName: 'comma'
	characterName: 'COMMA'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + (10)
		spacingRight: 50 * spacing + 70
	anchors:
		0:
			x: 550 - 86 + thickness
			y: xHeight * ( 250 / 500 )
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
					x: 125
					y: 115
					dirOut: 0
					expand:
						width: thickness * ( 29 / 85 )
						angle:( - 121 ) / 180 * Math.PI
						distr: 0
				1:
					x: 160 + (26)
					y: - 15 + (23)
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 10 / 85 ) + thickness * ( 36 / 85 ) * contrast
						angle:( 180 + 41 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: 65 + (0)
					y: - 95 - (15)
					dirOut: 0
					expand:
						width: thickness * ( 20 / 85 ) * contrast
						angle: Math.PI / 2
						distr: 0.25
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
				1:
					x: 175
					y: 55
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
				2:
					x: contours[1].nodes[0].x
					y: - overshoot / 2
				3:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[1].nodes[1].y
					dirOut: Math.PI / 2
					typeIn: 'smooth'
