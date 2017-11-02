exports.glyphs['c'] =
	unicode: 'c'
	glyphName: 'c'
	characterName: 'LATIN SMALL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45 + (19)
		spacingRight: 50 * spacing + 30
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[3].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + 90 + 250 * width
					y: Math.max( - overshoot + thickness / 10, 40 + xHeight * ( 88 / 500 ) * aperture )
					dirOut: Math.min( - 145 + ( 31 / 500 ) * xHeight * aperture , - 90 ) + 'deg'
					expand:
						width: thickness * ( 13 / 85 ) * contrast
						angle: Math.min( - 145 + ( 31 / 500 ) * xHeight * aperture , - 90 ) - 90 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.45 - Math.max(0, (thickness - 120) * 54 / 60)
					y: - overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: (0.8 * contrast + 0.2) * thickness * ( 60 / 85 ) + Math.max(0, (thickness - 120) * 18 / 60) + Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 83 / 60)
						angle: 60 / 180 * Math.PI - Math.max(0, (thickness - 120) * 0.23 / 60) - Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 0.24 / 60)
						distr: 0
				2:
					x: spacingLeft
					y: xHeight * ( 235 / 500 ) + (10)
					dirOut: 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 96 / 85 )
						angle: 23 + 10 - 10 * ( thickness / 85 ) + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5 - Math.max(0, (thickness - 120) * 15 / 60)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					# dirIn: -90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: contrast * thickness * ( 20 / 85 ) + Math.max(0, (thickness - 120) * 26 / 60) + Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 31 / 60)
						angle: - 104 / 180 * Math.PI - Math.max(0, (thickness - 120) * 0.51 / 60) - Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 0.40 / 60)
						distr: 0
				4:
					x: contours[0].nodes[0].x - contours[0].nodes[4].expand.width * 0.2
					y: xHeight - 95
					dirIn: 110 + 'deg'
					# dirIn: Utils.lineAngle({x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y},{x:  contours[0].nodes[4].expandedTo[0].x, y:  contours[0].nodes[4].expandedTo[1].y})
					typeOut: 'smooth'
					expand:
						width: Math.max( thickness * serifBall, contours[0].nodes[1].expand.width )
						angle: 180 + 'deg'
						distr: 0.2
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) / 2
					y: contours[0].nodes[4].y - thickness / 2 * serifBall
					dirIn: 0 + 'deg'
					expand:
						width: 0
						angle: 180 + 'deg'
						distr: 0
		# 1:
		# 	skeleton: false
		# 	closed: true
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[3].expandedTo[0].x
		# 			y: contours[0].nodes[3].expandedTo[0].y
		# 			# dirOut: 0 + 'deg'
		# 			# type: 'smooth'
		# 		1:
		# 			x: contours[0].nodes[0].expandedTo[0].x
		# 			y: xHeight - 95
		# 			dirOut: 90 + 'deg'
		# 			dirIn: 90 + 'deg'
		# 			# type: 'smooth'
		# 		2:
		# 			x: contours[1].nodes[1].x - Math.max( 5, thickness * ( 40 / 85 ) + serifBall )
		# 			y: contours[1].nodes[1].y - Math.max( 5, thickness * ( 40 / 85 ) + serifBall )
		# 			dirOut: 0 + 'deg'
		# 			dirIn: 0 + 'deg'
		# 			# type: 'smooth'
		# 		3:
		# 			x: contours[1].nodes[2].x - Math.max( 5, thickness * ( 40 / 85 ) + serifBall )
		# 			y: contours[1].nodes[1].y
		# 			dirOut: if thickness > 85 then 111 + 21 - ( 21 / 85 ) * thickness + 'deg' else 111 - 21 + ( 21 / 85 ) * thickness + 'deg'
		# 			typeIn: 'smooth'
		# 		4:
		# 			x: contours[0].nodes[3].expandedTo[1].x
		# 			y: contours[0].nodes[3].expandedTo[1].y
		# 			dirIn: 0 + 'deg'
		# 			# type: 'smooth'
