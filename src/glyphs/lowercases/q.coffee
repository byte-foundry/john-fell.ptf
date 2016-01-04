exports.glyphs['q'] =
	unicode: 'q'
	glyphName: "q"
	characterName: "LATIN SMALL LETTER Q"
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 45 * spacing + (21)
		spacingRight: 35 * spacing + (16) + serifWidth + 15
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
					x: 200 + 210 * width + (21)
					y: descender * ( 220 / 250 ) + serifHeight + serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - 110
					y: contours[0].nodes[2].y - Math.min( 50, ( 50 / 85 ) * thickness )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight - 60
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 33 / 85 )
						distr: 1
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 5 / 85 )
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 10 / 85 )
					y: 75
					dirOut: - 125 + 'deg'
					dirOut: if width <= 1.2 then - 125 + 125 * width - 125 + 'deg' else  - 140 + 15 * width + 'deg'
					type: 'smooth'
					expand: Object({
						width:  Math.min( thickness * ( 30 / 85 ), ( thickness * ( 30 / 85 ) / 500 ) * xHeight )
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * 0.58
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 50 / 85 )
						angle: 45 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft
					y: xHeight * ( 257 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 91 / 85 )
						angle: 15 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[4].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * 0.6
					y: xHeight + overshoot
					dirIn: 0 + 'deg'
					tensionIn: 1.1
					type: 'smooth'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: - 104 + 'deg'
						distr: 0
					})
				4:
					# x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 10 / 85 )
					# y: xHeight - 115
					# dirIn: Math.max( 146 - ( 30 / 500 ) * xHeight, 90 ) + 'deg'
					# tensionIn: 0.9
					# type: 'smooth'
					# expand: Object({
					# 	width: Math.min( thickness * ( 54 / 85 ), ( thickness * ( 54 / 85 ) / 500 ) * xHeight )
					# 	angle: 180 + 34 + 'deg'
					# 	distr: 1
					# })
					expandedTo: [
						x: contours[0].nodes[2].expandedTo[0].x
						y: contours[0].nodes[2].expandedTo[0].y
						# dirIn: Math.min( 146 - ( 30 / 500 ) * xHeight, 90 ) + 'deg'
						# dirIn: 118 + 'deg'
						dirIn: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[2].expandedTo[0].point ) - Math.PI / 2
					,
						x: contours[0].nodes[1].expandedTo[0].x
						y: contours[0].nodes[1].expandedTo[0].y
						# dirOut: Math.min( 146 - ( 30 / 500 ) * xHeight, 90 ) + 'deg'
						# dirOut: 118 + 'deg'
						dirOut:
							if thickness < 30
							then Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[2].expandedTo[0].point ) - Math.PI / 2
							else 118 + 'deg'
					]
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
					anchorLine: descender * ( 220 / 250 )
					leftWidth: 20
					rightWidth: 20
