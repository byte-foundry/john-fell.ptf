exports.glyphs['plus'] =
	unicode: '+'
	glyphName: 'plus'
	characterName: 'PLUS SIGN'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 100
		spacingRight: 50 * spacing + 100
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
					x: spacingLeft
					y: xHeight * ( 220 / 500 ) + (30)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 60 / 85 )
						angle: 90 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].x + 200 * width + 220
					y: xHeight * ( 220 / 500 ) + (30)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 60 / 85 )
						angle: 90 + 'deg'
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
					y: contours[0].nodes[0].y + ( ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 66 / 85 )
						angle: 0 + 'deg'
						distr: 0
				1:
					x: contours[1].nodes[0].x
					y: contours[0].nodes[0].y - ( ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 66 / 85 )
						angle: 0 + 'deg'
