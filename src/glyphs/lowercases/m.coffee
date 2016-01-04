exports.glyphs['m'] =
	unicode: 'm'
	glyphName: "m"
	characterName: "LATIN SMALL LETTER M"
	ot:
		advanceWidth: contours[2].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + (0) + serifWidth + 15
		spacingRight: 30 * spacing + serifWidth + 15
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
						angle: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - serifHeight * ( 60 / 20 ) - serifCurve * ( 40 / 15 )
					expand: Object({
						width: thickness
						distr: 0.25
						angle: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight - 135 + ( thickness - 85 ) / 4 + (25)
					dirOut:
						if width <= 1.2
						then 60 - 60 * width + 60 + 'deg'
						else 60 - 5 * width + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 ) * contrast * width
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					# angle: Math.max( - thickness - 77 * contrast, Math.max( - 129 * width, - 129 ) ) + 'deg'
					# angle: - 129 + axis + 'deg'
					tensionOut: 1.2
					type: 'smooth'
					expand: Object({
						width: thickness * ( 72 / 85 )
						angle: - 119 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x + 220 * width + (64)
					y: xHeight - 170 - thickness + 85
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
					x: contours[1].nodes[2].expandedTo[0].x - ( 5 / 85 ) * thickness
					# y: xHeight * ( 370 / 500 )
					y: contours[1].nodes[0].y
					dirOut: if width <= 1.2 then 60 - 60 * width + 60 + 'deg' else 60 - 5 * width + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 ) * contrast * width
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[2].nodes[3].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					# angle: Math.max( - thickness - 77 * contrast, Math.max( - 129 * width, - 129 ) ) + 'deg'
					# angle: - 129 + axis + 'deg'
					tensionOut: 1.2
					type: 'smooth'
					expand: Object({
						width: thickness * ( 72 / 85 )
						angle: - 119 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[2].x + 300 * width
					x: contours[1].nodes[2].expandedTo[0].x + 220 * width + (64)
					y: xHeight - 170 - thickness + 85
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
