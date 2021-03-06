exports.glyphs['m'] =
	unicode: 'm'
	glyphName: 'm'
	characterName: 'LATIN SMALL LETTER M'
	ot:
		advanceWidth: contours[2].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (0) + serifWidth + 15
		spacingRight: 50 * spacing + 30 + serifWidth + 15
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
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
						angle: 0 + 'deg'
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - serifHeight * ( 60 / 20 ) - serifCurve * ( 40 / 15 )
					expand: Object({
						width: thickness
						distr: 0.25
						angle: 0 + 'deg'
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 4 / 85 ) * thickness
					y: xHeight - 140 + ( thickness - 85 ) / 4 + (25) + 30 / width - 30
					dirOut: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[0].point ) + ( 20 / 180 * Math.PI )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 10 / 85 ) + thickness * ( 15 / 85 ) * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					tensionOut: 1.1
					type: 'smooth'
					expand: Object({
						# width: thickness * ( 80 / 85 ) / 2 + thickness * ( 80 / 85 ) / 2 * contrast
						width: thickness * ( 40 / 85 ) + thickness * ( 40 / 85 ) * contrast
						angle: Math.max( - 129 , - 129 - 10 * contrast * width + 10 ) + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 190 + 200 * width - (0),
						contours[0].nodes[0].expandedTo[1].x + 0.25 * thickness + 10
					)
					y: xHeight - Math.min(
						165,
						( 165 / 500 ) * xHeight
					)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].x
					y: 0 + serifHeight + serifCurve
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[0].x - ( 4 / 85 ) * thickness
					y: xHeight - 140 + ( thickness - 85 ) / 4 + (25) + 30 / width - 30
					dirOut: Utils.lineAngle( contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[0].point ) + ( 20 / 180 * Math.PI )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 10 / 85 ) + thickness * ( 15 / 85 ) * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[2].nodes[0].expandedTo[1].x + ( contours[2].nodes[3].expandedTo[0].x - contours[2].nodes[0].expandedTo[1].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					tensionOut: 1.1
					type: 'smooth'
					expand: Object({
						# width: thickness * ( 80 / 85 ) / 2 + thickness * ( 80 / 85 ) / 2 * contrast
						width: thickness * ( 40 / 85 ) + thickness * ( 40 / 85 ) * contrast
						angle: Math.max( - 129 , - 129 - 10 * contrast * width + 10 ) + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[1].nodes[3].expandedTo[1].x + 190 + 200 * width - (0),
						contours[1].nodes[3].expandedTo[0].x + 0.25 * thickness + 10
					)
					y: xHeight - Math.min(
						165,
						( 165 / 500 ) * xHeight
					)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				3:
					x: contours[2].nodes[2].x
					y: 0 + serifHeight + serifCurve
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y + serifCurve * ( 20 / 15 )
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y + serifCurve * ( 20 / 15 )
				2:
					anchorLine: 0
					leftWidth: 20
					rightWidth: 5
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].y + serifCurve * ( 20 / 15 )
				1:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].y + serifCurve * ( 20 / 15 )
				2:
					anchorLine: 0
					leftWidth: 10
					# rightWidth: 1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: xHeight
					leftWidth: 20
					right: false
					attaque: true
					attaqueAngle: 20
					directionY: -1
			parentParameters:
				serifMedian: serifMedian # - serifMedian / 2 * spurHeight
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[2].nodes[3].expandedTo[0].x
					y: contours[2].nodes[3].y + serifCurve * ( 20 / 15 )
				1:
					x: contours[2].nodes[3].expandedTo[1].x
					y: contours[2].nodes[3].y + serifCurve * ( 20 / 15 )
				2:
					anchorLine: 0
					leftWidth: 10
					rightWidth: 20
