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
					x: contours[0].nodes[2].expandedTo[1].x + 120 - (0) - Math.max(0, (thickness - 120) * 40 / 60)
					y: contours[0].nodes[1].y + ( Math.sin( 60 / 180 * Math.PI ) * (( 70 / 85 ) * thickness) ) + 48 + (0) - Math.max(0, (thickness - 120) * 47 / 60)
					dirOut: - 100 + 'deg'
					typeIn: 'smooth'
					expand:
						width: 6 + thickness * ( 10 / 85 ) * contrast + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 7 / 60)
						angle: (180 - 26) / 180 * Math.PI + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.29 / 60)
						distr: 0.25
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot / 2
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
					expand:
						# width: Math.min( Math.min( contours[0].nodes[2].expandedTo[0].y - 10 ,thickness * ( 69 / 85 ) ), thickness * ( 69 / 85 ) * ( xHeight / 500 ) )
						width: ( 70 / 85 ) * thickness - Math.max(0, (thickness - 120) * 35 / 60) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 4.3 / 60)
						angle: (60) / 180 * Math.PI - Math.max(0, (thickness - 120) * 0.17 / 60) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.1 / 60)
						distr: 0
				2:
					x: contours[1].nodes[2].expandedTo[0].x + 200 * width + 155 - (21) + Math.max(0, (thickness - 120) * 84 / 60)
					y: Math.min(
						( 52 + ( 50 / 85 ) * thickness ),
						( ( 52 + ( 50 / 85 ) * thickness ) / 500 ) * xHeight
					) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 45 / 60)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 85 / 85 )
						angle: 0 + 'deg'
						distr: 0.75
				3:
					x: contours[0].nodes[2].x
					y: ( 340 + 23 ) / 500 * xHeight
					dirOut: 90 + 'deg'
					tensionOut: 1.15
					expand:
						width: thickness * ( 90 / 85 )
						angle: - 20 + 'deg'
						distr: 0.75
				4:
					x: 253 * width
					x: contours[0].nodes[5].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[5].expandedTo[1].x ) * 0.58
					y: xHeight + overshoot
					dirIn: 0 + 'deg'
					typeOut: 'smooth'
					expand:
						width: thickness * ( 40 / 85 ) * contrast - Math.max(0, (thickness - 120) * 11 / 60) + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 47.2 / 60)
						# angle: 180 - 138 + 'deg'
						angle: Math.min(
							60,
							Math.max(
								40,
								( 90 / 85 ) * thickness - 50
							)
						) / 180 * Math.PI - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.69 / 60)
						distr: 1
				5:
					x: contours[1].nodes[2].expandedTo[0].x + 20 + Math.max(0, (thickness - 120) * 19 / 60)
					y: Math.max(
						xHeight - 100 - 40 * aperture,
						contours[1].nodes[3].y
					)
					dirIn: 70 + 20 * aperture + 'deg'
					typeOut: 'smooth'
					tensionIn: 0.6
					expand:
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
					typeIn: 'smooth'
					tensionOut: 1.2
					tensionIn: 1.2
					expand:
						width: thickness * ( 15 / 85 ) * contrast + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 5.4 / 60)
						angle: 116 / 180 * Math.PI - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.26 / 60)
						distr: 0
				1:
					# x: 135 * width
					x: contours[1].nodes[2].x + ( contours[1].nodes[0].x - contours[1].nodes[2].x ) * 0.35
					y: - overshoot
					dirIn: 0 + 'deg'
					typeOut: 'smooth'
					expand:
						width: thickness * ( 64 / 85 ) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 23 / 60)
						angle: 45 / 180 * Math.PI - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.16 / 60)
						distr: 0
				2:
					x: spacingLeft + (21)
					y: ( 90 / 500 ) * xHeight + ( thickness * ( 20 / 85 ) - 20 )
					# y: contours[1].nodes[1].expandedTo[0].y + ( contours[1].nodes[3].expandedTo[0].y - contours[1].nodes[1].expandedTo[0].y ) * 0.4 - ( 0.05 / 85 ) * thickness
					dirIn: - 90 + 'deg'
					typeOut: 'smooth'
					tensionOut: 1.5
					expand:
						width: thickness * ( 86 / 85 )
						angle: 6 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[2].expandedTo[0].x + thickness * (8/86)
					y: ( 275 / 500 ) * xHeight * crossbar - (8) + Math.max(0, (thickness - 120) * 26 / 60)
					dirIn: Math.max( Math.min( - 150, - 163 * width), - 170 ) + 'deg'
					tensionIn: Math.min( 1.35 * width, 1.35 )
					# typeOut: 'line'
					expand:
						width: thickness * ( 20 / 85 ) * contrast + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 8.6 / 60)
						angle: - 90 + 'deg'
						distr: 0
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
					typeOut: 'smooth'
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
