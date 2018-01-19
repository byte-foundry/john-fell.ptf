exports.glyphs['parenright'] =
	unicode: ')'
	glyphName: 'parenright'
	characterName: 'RIGHT PARENTHESIS'
	ot:
		advanceWidth: width * 470 + thickness - 85
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (10)
		spacingRight: 50 * spacing + 10
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
					x: 30
					y: capHeight + overshoot
					dirOut:( - 33 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 11 / 85 )
						angle:( 63 ) / 180 * Math.PI
						distr: 1
				1:
					x: 250
					y: ( contours[0].nodes[0].y + contours[0].nodes[2].y ) / 2
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 60 / 85 )
						angle: 0
						distr: 0
				2:
					x: 30 + (7)
					y: ( 180 / 210 ) * descender
					dirIn:( 33 ) / 180 * Math.PI
					expand:
						width: thickness * ( 11 / 85 )
						angle:( - 63 ) / 180 * Math.PI
						distr: 1
