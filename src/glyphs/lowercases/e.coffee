exports.glyphs['e'] =
	unicode: 'e'
	glyphName: 'e'
	characterName: 'LATIN SMALL LETTER E'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 30
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
						width: ( 20 / 85 ) * thickness * contrast
						distr: 1
						angle: -90 + 'deg'
					})
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					dirOut: 0 + 'deg'
					expand: Object({
						angle: - 90 + 'deg'
						width: ( 25 / 85 ) * thickness * contrast
						distr: 1
					})
				2:
					x: contours[0].nodes[4].expandedTo[1].x + 100 + 274 * width + (67)
					y: xHeight * ( 340 / 500 ) * crossbar
					dirOut: Math.max( 90, 150 - ( 50 / 500 ) * xHeight ) + 'deg'
					dirOut: Math.max(
						Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[3].expandedTo[0].point ) - ( 30 / 180 * Math.PI ),
						Math.PI / 2
					)
					tensionOut: 1.2
					expand: Object({
						width: thickness * ( 94 / 85 )
						angle: 0 + 'deg'
						distr: 0.75
					})
				3:
					x: ( contours[0].nodes[2].expandedTo[1].x + contours[0].nodes[4].expandedTo[1].x ) * ( 255 / 465 )
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 20 / 85 ) * thickness * contrast
						angle: - 104 + 180 + 'deg'
						distr: 1
					})
				4:
					x: spacingLeft + (18/85) * thickness
					y: xHeight * ( 240 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 96 / 85 )
						angle: 21 + 180 + 'deg'
						distr: 0.75
					})
				5:
					x: ( contours[0].nodes[4].expandedTo[1].x + contours[0].nodes[6].x ) * ( 240 / 456 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					# dirIn: 0 + 'deg'
					expand: Object({
						angle: 70 + 180 + 'deg'
						width: ( 60 / 85 ) * thickness * contrast
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
