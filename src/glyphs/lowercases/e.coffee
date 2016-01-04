exports.glyphs['e'] =
	unicode: 'e'
	glyphName: "e"
	characterName: "LATIN SMALL LETTER E"
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 45 * spacing + (18)
		spacingRight: 30 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[3].expandedTo[1].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[2].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 )
						distr: 1
					})
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					dirOut: 0 + 'deg'
					expand: Object({
						angle: - 90 + 'deg'
						width: thickness * ( 25 / 85 )
						distr: 1
					})
				2:
					x: contours[0].nodes[4].expandedTo[1].x + 100 + 274 * width + (67)
					y: xHeight * ( 340 / 500 ) * crossbar
					dirOut: Math.max( 90, 150 - ( 50 / 500 ) * xHeight ) + 'deg'
					tensionOut: 1.2
					expand: Object({
						width: thickness * ( 94 / 85 )
						angle: 0 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * (295-50)/(495-50)
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: - 104 + 180 + 'deg'
						distr: 1
					})
				4:
					x: spacingLeft
					y: xHeight * ( 240 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 96 / 85 )
						angle: 21 + 180 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					# dirIn: 0 + 'deg'
					expand: Object({
						angle: 70 + 180 + 'deg'
						width: thickness * ( 60 / 85 )
						distr: 1
					})
				6:
					x: contours[0].nodes[2].expandedTo[1].x - ( 20 / 85 ) * thickness + ( 10 / 85 ) * thickness * aperture - 10
					y: xHeight * ( 135 / 500 ) + ( 20 / 85 ) * thickness - 20
					y: Math.max( contours[0].nodes[5].expandedTo[0].y + thickness / 10, 40 + xHeight * ( 95 / 500 ) * aperture )
					# dirIn: Math.min( - 116, Math.max( - 100 , - ( 100 / 500 ) * xHeight * aperture ) ) + 'deg'
					# dirIn: - 110 + 'deg'
					dirIn: Math.min( - 140 + ( 30 / 500 ) * xHeight * aperture , - 90 ) + 'deg'
					expand: Object({
						angle: 163 + 180 + 'deg'
						angle: contours[0].nodes[6].dirIn + Math.PI / 2
						distr: 0.25
						width: thickness * ( 11 / 85 )
					})
