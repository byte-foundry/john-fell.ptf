exports.glyphs['a'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + - 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[4].expandedTo[1].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + 120 - (0)
					y: Math.min( 115, ( 115 / 500 ) * xHeight )
					y: contours[0].nodes[1].y + ( Math.sin( 60 / 180 * Math.PI ) * (( 70 / 85 ) * thickness) ) + 48 + (0)
					dirOut: - 100 + 'deg'
					type: 'smooth'
					expand: Object({
						width: 6 + thickness * ( 10 / 85 )
						angle: 180 - 26 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot / 2
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						# width: Math.min( Math.min( contours[0].nodes[2].expandedTo[0].y - 10 ,thickness * ( 69 / 85 ) ), thickness * ( 69 / 85 ) * ( xHeight / 500 ) )
						width: ( 70 / 85 ) * thickness
						angle: 60 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[2].expandedTo[0].x + 200 * width + 155 - (21)
					y: Math.min(
						( 52 + ( 50 / 85 ) * thickness ),
						( ( 52 + ( 50 / 85 ) * thickness ) / 500 ) * xHeight
					)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 85 / 85 )
						angle: 0 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[2].x
					y: ( 340 + 23 ) / 500 * xHeight
					dirOut: 90 + 'deg'
					tensionOut: 1.15
					expand: Object({
						width: thickness * ( 90 / 85 )
						angle: - 20 + 'deg'
						distr: 0.75
					})
				4:
					x: 253 * width
					x: contours[0].nodes[5].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[5].expandedTo[1].x ) * 0.58
					y: xHeight + overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 40 / 85 ) * contrast
						# angle: 180 - 138 + 'deg'
						angle: Math.min(
							60,
							Math.max(
								40,
								( 90 / 85 ) * thickness - 50
							)
						) + 'deg'
						distr: 1
					})
				5:
					x: contours[1].nodes[2].expandedTo[0].x + 20
					y: Math.max(
						xHeight - 100 - 40 * aperture,
						contours[1].nodes[3].y
					)
					dirIn: 70 + 20 * aperture + 'deg'
					type: 'smooth'
					tensionIn: 0.6
					expand: Object({
						width: Math.min( 135, thickness * ( 2 / 3 ) + thickness * ( 1 / 3 ) * serifBall )
						angle: 180 + 31 + 'deg'
						angle: Math.min(
							220,
							Math.max(
								200,
								260 - ( 50 / 85 ) * thickness
							)
						) + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x + thickness * (13/86)
					y: 95
					dirOut: 46 * width + 'deg'
					dirOut: 55 - 25 * width + 25 + 'deg'
					# dirOut: Math.min( Math.max( 60, 46 * width), 35 ) + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					tensionIn: 1.2
					expand: Object({
						width: thickness * ( 15 / 85 ) * contrast
						angle: 116 + 'deg'
						distr: 0
					})
				1:
					# x: 135 * width
					x: contours[1].nodes[2].x + ( contours[1].nodes[0].x - contours[1].nodes[2].x ) * 0.35
					y: - overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 64 / 85 )
						angle: 45 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (21)
					y: ( 90 / 500 ) * xHeight + ( thickness * ( 20 / 85 ) - 20 )
					# y: contours[1].nodes[1].expandedTo[0].y + ( contours[1].nodes[3].expandedTo[0].y - contours[1].nodes[1].expandedTo[0].y ) * 0.4 - ( 0.05 / 85 ) * thickness
					dirIn: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.5
					expand: Object({
						width: thickness * ( 86 / 85 )
						angle: 6 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + thickness * (8/86)
					y: ( 275 / 500 ) * xHeight * crossbar - (8)
					dirIn: Math.max( Math.min( - 150, - 163 * width), - 170 ) + 'deg'
					tensionIn: Math.min( 1.35 * width, 1.35 )
					# typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * contrast
						angle: - 90 + 'deg'
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[0].nodes[5].expandedTo[1].y
					dirOut: contours[0].nodes[5].dirIn
					typeIn: 'line'
				1:
					x: contours[0].nodes[5].expandedTo[1].x + ( contours[0].nodes[5].expandedTo[0].x - contours[0].nodes[5].expandedTo[1].x ) * ( 50 / 75 )
					# y: Math.max( contours[0].nodes[5].expandedTo[1].y - thickness * ( 60 / 85 ) - serifBall, contours[1].nodes[3].y - serifBall )
					# y: contours[0].nodes[5].expandedTo[1].y - thickness * ( 60 / 85 ) * serifBall
					y: contours[0].nodes[5].expandedTo[1].y - Math.min( 80, ( 60 / 85 ) * thickness ) * serifBall
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: Math.min( contours[0].nodes[5].expandedTo[0].x + 20 * serifBall, contours[0].nodes[4].expandedTo[0].x )
					# x: 135
					# y: xHeight - ( 500 - 340 )
					# y: contours[2].nodes[1].y + ( contours[2].nodes[3].y - contours[2].nodes[1].y ) * ( (10+30*serifBall) / 105 )
					y: contours[0].nodes[5].expandedTo[1].y + ( contours[2].nodes[1].y - contours[0].nodes[5].expandedTo[1].y ) * ( 30 / 105 )
					dirOut: contours[0].nodes[5].dirIn
					dirIn: contours[0].nodes[5].dirIn
					tensionIn: .7
				3:
					x: contours[0].nodes[5].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[0].y
					dirIn: contours[0].nodes[5].dirIn
					tensionIn: 0.5 + thickness / 85 / 2
