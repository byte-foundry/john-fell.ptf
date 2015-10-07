exports.glyphs['c'] =
	unicode: 'c'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 45 * spacing + (19)
		spacingRight: 30 * spacing
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
					x: contours[0].nodes[2].expandedTo[1].x + 90 + 250 * width
					# y: ( 135 / 500 ) * xHeight
					y: Math.max( - overshoot + thickness / 10, 40 + xHeight * ( 88 / 500 ) * aperture )
					dirOut: - 109 + 'deg'
					dirOut: Math.min( - 145 + ( 31 / 500 ) * xHeight * aperture , - 90 ) + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 13 / 85 )
						# angle: 146 + 'deg'
						angle: contours[0].nodes[0].dirOut - Math.PI / 2
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.45
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 60 / 85 )
						angle: 60 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft
					y: xHeight * ( 235 / 500 ) + (10)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 96 / 85 )
						angle: 23 + 10 - 10 * ( thickness / 85 ) + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					# dirIn: -90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: - 104 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight - 95
					dirIn: 110 + 'deg'
					# dirIn: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[4].expandedTo[1].point )
					type: 'smooth'
					expand: Object({
						width: Math.max( thickness * serifBall, contours[0].nodes[1].expand.width )
						angle: 180 + 'deg'
						distr: 0.2
					})
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) / 2
					y: contours[0].nodes[4].y - thickness / 2 * serifBall
					dirIn: 0 + 'deg'
					expand: Object({
						width: 0
						angle: 180 + 'deg'
						distr: 0
					})
		# 1:
		# 	skeleton: false
		# 	closed: false
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
		# 			type: 'smooth'
		# 		4:
		# 			x: contours[0].nodes[3].expandedTo[1].x
		# 			y: contours[0].nodes[3].expandedTo[1].y
		# 			dirIn: 0 + 'deg'
		# 			# type: 'smooth'
