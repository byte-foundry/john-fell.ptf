exports.glyphs['h'] =
	unicode: 'h'
	ot:
		advanceWidth: contours[1].nodes[3].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 40 * spacing - (8) + serifWidth + 40
		spacingRight: 30 * spacing + serifWidth + 25
	anchors:
		0:
			x: 120 + ( 21 )
			y: ascenderHeight - ( 160 / 500 ) * xHeight
		1:
			x: ( 445 + 64 ) * width
			# y: xHeight * ( 340 / 500 ) - ( thickness + 85 ) / 4
			y: xHeight - 160 - ( thickness + 85 ) / 4
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
					y: ascenderHeight - spurHeight * ( 60 ) - serifHeight * ( 10 / 20 ) - serifCurve * ( 40 / 15 )
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
					# y: xHeight * ( 370 / 500 )
					y: xHeight - 140 + ( thickness - 85 ) / 4 + (25)
					dirOut: if width <= 1.2 then 60 - 60 * width + 60 + 'deg' else 60 - 5 * width + 'deg'
					# angle: - 90 + axis + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 ) * contrast * width
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.6
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					# angle: Math.max( - thickness - 77 * contrast, Math.max( - 129 * width, - 129 ) ) + 'deg'
					# angle: - 129 + axis + 'deg'
					tensionOut: 1.1
					type: 'smooth'
					expand: Object({
						width: thickness * ( 77 / 85 )
						angle: - 129 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 100 + 225 * width - (64)
					y: xHeight - 170 - thickness + 85
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[1].nodes[2].x
					y: 0 + serifHeight + serifCurve
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.75
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
					anchorLine: 0
					leftWidth: 20
					rightWidth: 20
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].y
				1:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].y
				2:
					anchorLine: 0
					leftWidth: 20
					rightWidth: 20
		2:
			base: 'attaque'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: ascenderHeight
					leftWidth: 1.25
