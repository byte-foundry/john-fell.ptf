exports.glyphs['seven'] =
	unicode: '7'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + 5 * spacing
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
					x: 109 + (16)
					y: ( 220 / 250 ) * descender
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 428 + (6)
					y: ( 485 / 500 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 15 / 500 ) * xHeight
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 75 / 85 )
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point )
						distr: 1
					})
				4:
					x: 80
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 75 / 85 )
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point )
						distr: 1
					})
