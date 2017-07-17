exports.glyphs['a_alt'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	altImg: 'alt-fell-a-1.svg'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 15 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[3].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x + 200 * width + 220 - (9),
						contours[1].nodes[2].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: 90 + serifHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - ( 50 / 500 ) * xHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.75
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: xHeight + overshoot
					expand: Object({
						width: ( 10 / 85 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 5 / 85 )
					y: 80
					dirOut: - 125 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 90 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.57 + (2)
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 50 / 85 )
						angle: 45 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (23)
					y: xHeight * ( 257 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 91 / 86 )
						angle: 15 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.65 - (4)
					y: xHeight + overshoot
					dirIn: 0 + 'deg'
					tensionIn: 1.1
					type: 'smooth'
					expand: Object({
						width: thickness * ( 27 / 86 )
						angle: - 68 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 5 / 85 )
					y: xHeight - xHeight * ( 135 / 500 )
					dirIn: 90 + 'deg'
					tensionIn: 0.9
					type: 'smooth'
					expand: Object({
						width: Math.min( thickness * ( 54 / 86 ), ( thickness * ( 54 / 86 ) / 500 ) * xHeight )
						angle: 180 + 'deg'
						distr: 1
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: - overshoot
					rightWidth: 20
					left: false
					attaque: true
					attaqueAngle: 14
