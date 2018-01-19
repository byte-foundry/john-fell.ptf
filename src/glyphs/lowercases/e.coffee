exports.glyphs['e'] =
	unicode: 'e'
	glyphName: 'e'
	characterName: 'LATIN SMALL LETTER E'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					dirOut: 0
					typeOut: 'line'
					expand:
						width: thickness * ( 20 / 85 ) * contrast
						distr: 1
						angle: -Math.PI / 2
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					typeIn: 'line'
					typeOut: 'line'
					expand:
						angle: - Math.PI / 2
						width: thickness * ( 25 / 85 ) * contrast
						distr: 1
				2:
					x: contours[0].nodes[4].expandedTo[1].x + 100 + 274 * width + (67) + Math.max(0, (thickness - 120) * 33 / 60)
					y: xHeight * ( 340 / 500 ) * crossbar - Math.max(0, (thickness - 120) * 33 / 60)
					typeIn: 'line'
					dirOut: Math.max( 90,( 150 - ( 50 / 500 ) * xHeight ) ) / 180 * Math.PI
					tensionOut: 1.2
					expand:
						width: thickness * ( 94 / 85 )
						angle: 0
						distr: 0.75
				3:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * (295-50)/(495-50)
					y: xHeight + overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 85 ) * contrast + Math.max(0, (thickness - 120) * 14 / 60) + Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 16 / 60)
						angle: (- 104 + 180) / 180 * Math.PI - Math.max(0, (thickness - 120) * 0.46 / 60) - Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 0.29 / 60)
						distr: 1
				4:
					x: spacingLeft - 0.25 * contours[0].nodes[4].expand.width * Math.cos(contours[0].nodes[4].expand.angle)
					y: xHeight * ( 240 / 500 )
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					tensionIn: 1.2
					expand:
						width: thickness * ( 96 / 85 )
						angle: (21 + 180) / 180 * Math.PI
						distr: 0.75
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.5
					y: - overshoot
					dirOut: 0
					typeIn: 'smooth'
					# dirIn: 0
					expand:
						angle: (70 + 180) / 180 * Math.PI - Math.max(0, (thickness - 120) * 0.32 / 60) - Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 0.38 / 60)
						width: (0.8 * contrast + 0.2) * thickness * ( 60 / 85 ) + Math.max(0, (thickness - 120) * 8 / 60) + Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 32 / 60)
						distr: 1
				6:
					x: contours[0].nodes[2].expandedTo[1].x - ( 20 / 85 ) * thickness + ( 10 / 85 ) * thickness * aperture - 10
					y: xHeight * ( 135 / 500 ) + ( 20 / 85 ) * thickness - 20
					y: Math.max( contours[0].nodes[5].expandedTo[0].y + thickness / 10, 40 + xHeight * ( 95 / 500 ) * aperture )
					dirIn: Math.min( - 140 + ( 30 / 500 ) * xHeight * aperture , - 90 ) * Math.PI / 180
					expand:
						angle: contours[0].nodes[6].dirIn + Math.PI / 2 + 0.1
						distr: 0.25
						width: thickness * ( 11 / 85 ) * contrast
