exports.glyphs['t'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + ( 25 * width + 70 )
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + 20
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x + 100 * width + 80
					y: xHeight * ( ( 30 + ( 70 / 85 ) * thickness ) / 500 )
					dirOut: Math.min( - 140 + ( ( 30 / 85 ) * thickness / 500 ) * xHeight , - 90 ) + 'deg'
					expand: Object({
						width: thickness * ( 11 / 85 )
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 48 / 85 )
						angle: 180 + 57 + 'deg'
						distr: 1
					})
				2:
					x: spacingLeft
					y: xHeight * ( ( 85 + ( 75 / 85 ) * thickness ) / 500 )
					dirOut: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					tensionIn: 1.2
					expand: Object({
						width: thickness
						angle: 180 - 13 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[2].x
					y:
						if Math.max( xHeight * ( 455 / 500 ) - thickness + 86, contours[1].nodes[0].expandedTo[1].y ) > xHeight - 10
						then xHeight - 10
						else Math.max( xHeight * ( 455 / 500 ) - thickness + 86, contours[1].nodes[0].expandedTo[1].y )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[2].x + thickness
					y: contours[0].nodes[3].y
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness + 65
						angle: 180 + 'deg'
						distr: 0
					})
				5:
					x: contours[0].nodes[2].x + thickness
					y: contours[0].nodes[4].y + 10
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness + 65
						angle: 180 + 'deg'
						distr: 0
					})
				6:
					x: contours[0].nodes[2].x + thickness
					y: xHeight * ( 620 / 500 )
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 6 / 85 )
						angle: 180 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x - 25
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 45 / 85 )
						distr: 0
					})
				1:
					x: contours[0].nodes[3].expandedTo[0].x - thickness * ( 5 / 85 )
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 45 / 85 )
						distr: 0
					})
