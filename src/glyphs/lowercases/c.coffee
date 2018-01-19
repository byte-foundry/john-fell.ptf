exports.glyphs['c'] =
	unicode: 'c'
	glyphName: 'c'
	characterName: 'LATIN SMALL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
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
					dirOut: Math.min( - 145 + ( 31 / 500 ) * xHeight * aperture ,( - 90 ) ) / 180 * Math.PI
					expand:
						width: thickness * ( 13 / 85 ) * contrast
						angle: (Math.min( - 145 + ( 31 / 500 ) * xHeight * aperture , - 90 ) - 90) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.45 - Math.max(0, (thickness - 120) * 54 / 60)
					y: - overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: (0.8 * contrast + 0.2) * thickness * ( 60 / 85 ) + Math.max(0, (thickness - 120) * 18 / 60) + Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 24 / 60)
						angle: 60 / 180 * Math.PI - Math.max(0, (thickness - 120) * 0.23 / 60) - Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 0.31 / 60)
						distr: 0
				2:
					x: spacingLeft + 0.25 * contours[0].nodes[2].expand.width * Math.cos(contours[0].nodes[2].expand.angle)
					y: xHeight * ( 235 / 500 ) + (10)
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 96 / 85 )
						angle: (23 + 10 - 10 * ( thickness / 85 )) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5 - Math.max(0, (thickness - 120) * 15 / 60)
					y: xHeight + overshoot
					dirOut: 0
					# dirIn: -Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: contrast * thickness * ( 20 / 85 ) + Math.max(0, (thickness - 120) * 26 / 60) + Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 31 / 60)
						angle: - 104 / 180 * Math.PI - Math.max(0, (thickness - 120) * 0.51 / 60) - Math.max(0, (thickness - 120) * (1 - contrast) * 1.17 * 0.40 / 60)
						distr: 0
				4:
					x: contours[0].nodes[0].x - contours[0].nodes[4].expand.width * 0.2
					y: xHeight - 95
					dirIn: 110 / 180 * Math.PI
					# dirIn: Utils.lineAngle({x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y},{x:  contours[0].nodes[4].expandedTo[0].x, y:  contours[0].nodes[4].expandedTo[1].y})
					typeOut: 'smooth'
					expand:
						width: Math.max( thickness * serifBall, contours[0].nodes[1].expand.width )
						angle: Math.PI
						distr: 0.2
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) / 2
					y: contours[0].nodes[4].y - thickness / 2 * serifBall
					dirIn: 0
					expand:
						width: 0
						angle: Math.PI
						distr: 0
		# 1:
		# 	skeleton: false
		# 	closed: true
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[3].expandedTo[0].x
		# 			y: contours[0].nodes[3].expandedTo[0].y
		# 			# dirOut: 0
		# 			# type: 'smooth'
		# 		1:
		# 			x: contours[0].nodes[0].expandedTo[0].x
		# 			y: xHeight - 95
		# 			dirOut: Math.PI / 2
		# 			dirIn: Math.PI / 2
		# 			# type: 'smooth'
		# 		2:
		# 			x: contours[1].nodes[1].x - Math.max( 5, thickness * ( 40 / 85 ) + serifBall )
		# 			y: contours[1].nodes[1].y - Math.max( 5, thickness * ( 40 / 85 ) + serifBall )
		# 			dirOut: 0
		# 			dirIn: 0
		# 			# type: 'smooth'
		# 		3:
		# 			x: contours[1].nodes[2].x - Math.max( 5, thickness * ( 40 / 85 ) + serifBall )
		# 			y: contours[1].nodes[1].y
		# 			dirOut: if thickness > 85 then (111 + 21 - ( 21 / 85 ) * thickness) / 180 * Math.PI else (111 - 21 + ( 21 / 85 ) * thickness ) / 180 * Math.PI
		# 			typeIn: 'smooth'
		# 		4:
		# 			x: contours[0].nodes[3].expandedTo[1].x
		# 			y: contours[0].nodes[3].expandedTo[1].y
		# 			dirIn: 0
		# 			# type: 'smooth'
