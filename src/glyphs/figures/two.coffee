exports.glyphs['two'] =
	# unicode: 50
	unicode: '2'
	ot:
		advanceWidth: 600 * spacing # contours[2].nodes[1].x + 23 * spacing
	anchors:
		0:
			# junction: Utils.pointOnCurve( contours[0].nodes[2].expandedTo[1], contours[0].nodes[3].expandedTo[1], 50 )
			junction: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[2].expandedTo[1], thickness * ( 154 / 85 ) )
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 44 + (10)
					y: ( 295 / 500 ) * xHeight - (2)
					dirOut: 79 + 'deg'
					expand: Object({
						width: thickness * ( 14 / 85 )
						angle: 180 - 12 + 'deg'
						distr: 0.25
					})
				1:
					x: 275 + (0)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 78 / 85 )
						angle: 180 - 124 + 'deg'
						distr: 1
					})
				2:
					x: 355 + (22)
					y: ( 335 / 500 ) * xHeight + (5)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.3
					expand: Object({
						width: thickness * ( 89 / 85 )
						angle: 13 + 'deg'
						distr: 0.25
					})
				3:
					# x: 205 - (0)
					x: 30
					# y: ( 85 / 500 ) * xHeight
					y: 0
					dirIn: 27 + 'deg'
					tensionIn: 0.9
					type: 'smooth'
					expand: Object({
						# width: thickness * ( 170 / 85 )
						width: ( 15 / 85 ) * thickness
						# angle: 180 - 155 + 'deg'
						angle: 180 + 90 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: anchors[0].junction.x
					# y: anchors[0].junction.y
					# dirOut: 0 + 'deg'
					# typeOut: 'line'
					# expand: Object({
					# 	width: thickness * ( 101 / 85 )
					# 	width: 1
					# 	angle: 123 + 'deg'
					# 	distr: 0
					# })
					expandedTo:
						[
							{
								x: contours[0].nodes[3].expandedTo[0].x
								y: 0
								typeOut: 'line'
							}
							{
								x: anchors[0].junction.x
								y: anchors[0].junction.y
								typeIn: 'line'
							}
						]
				1:
					x: 405 + (0)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 75 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
		# 		0:
		# 			x: 50 + (0)
		# 			y: 0
		# 			dirOut: 0 + 'deg'
		# 			typeOut: 'line'
		# 			expand: Object({
		# 				width: thickness * ( 15 / 85 )
		# 				angle: 90 + 'deg'
		# 				distr: 0
		# 			})
