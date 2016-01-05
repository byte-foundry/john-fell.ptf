exports.glyphs['p'] =
	unicode: 'p'
	glyphName: 'p'
	characterName: 'LATIN SMALL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 35 * spacing + (16) + serifWidth + 15
		spacingRight: 45 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight - serifHeight * ( 60 / 20 ) - serifCurve * ( 40 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: descender * ( 220 / 250 ) + serifHeight + serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x - ( 10 / 85 ) * thickness
					y: xHeight - ( 75 / 500 ) * xHeight * aperture
					dirOut: Math.min( ( 60 / 500 ) * xHeight * aperture, 75 ) + 'deg'
					expand: Object({
						width: Math.min( thickness * ( 35 / 85 ), ( thickness * ( 35 / 85 ) / 500 ) * xHeight )
						angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * 0.4
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 53 / 85 )
						angle: 180 + 222 + 'deg'
						distr: 1
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 100 + 270 * width - (21)
					y: xHeight * ( 250 / 500 )
					dirOut: 90 + 'deg'
					tensionOut: 0.9
					type: 'smooth'
					expand: Object({
						width: thickness * ( 97 / 85 )
						angle: 180 - 164 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[1].nodes[1].x
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * contrast * ( 22 / 85 )
						angle: 180 + 112 + 'deg'
						distr: 1
					})
				4:
					#######################################################
					#######################################################
					#######################################################
					# TODO: fix aperture / thickness / angle
					#######################################################
					#######################################################
					#######################################################
					x: contours[1].nodes[0].x
					# y: xHeight * ( 120 / 500 )
					y: 40 + ( 80 / 500 ) * xHeight * aperture
					dirIn: Math.max( - 90, - 65 * aperture ) + 'deg'
					type: 'smooth'
					expand: Object({
						width: Math.min( thickness * ( 54 / 85 ) * contrast, ( thickness * ( 35 / 85 ) * contrast / 500 ) * xHeight )
						angle: 180 + 43 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y + serifHeight + serifCurve
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y + serifHeight + serifCurve
				2:
					anchorLine: descender * ( 220 / 250 )
					leftWidth: 20
					rightWidth: 20
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: xHeight
					leftWidth: 20
					right: false
					attaque: true
					attaqueAngle: 20
					directionY: -1
			parentParameters:
				serifMedian: serifMedian # - serifMedian / 2 * spurHeight
