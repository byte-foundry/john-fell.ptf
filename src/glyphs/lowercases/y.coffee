exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + serifWidth + 5
		spacingRight: 50 * spacing + serifWidth + 5
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) / 2
			y: xHeight + diacriticHeight
			angleOne: Utils.lineAngle({x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}, {x: contours[1].nodes[0].expandedTo[0].x, y: contours[1].nodes[0].expandedTo[0].y})
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 30 + 250 * width + (16)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 136 + 0.25 * contours[0].nodes[1].expand.width - Math.max(0, (thickness - 120) * 26 / 60)
					y: contours[0].nodes[0].y - 414
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 23 / 85 )
						angle: 0
						distr: 0.25
				2:
					x: Utils.onLine({
						y: contours[0].nodes[2].y,
						on:[contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1]]
					}) - 0.75 * contours[0].nodes[2].expand.width
					y: contours[1].nodes[1].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 25.8 / 85 )
						angle: 0
						distr: 0.25
				3:
					x: Utils.onLine({
						y: contours[0].nodes[3].y,
						on:[contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1]]
					}) - contours[0].nodes[3].expand.width * Math.cos(contours[0].nodes[3].expand.angle)
					y: contours[0].nodes[4].y + 90 - contours[0].nodes[3].expand.width * Math.sin(contours[0].nodes[3].expand.angle)
					typeIn: 'line'
					typeOut: 'smooth'
					expand:
						width: thickness * ( 23.7 / 85 )
						angle: - 28 / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[3].expandedTo[0].x - 72
					y: descender - overshoot
					dirIn: 0 + 'deg'
					typeOut: 'smooth'
					tensionOut: 1.5
					expand:
						width: 80 - Math.max(0, (thickness - 120) * 7 / 60)
						angle: -124 / 180 * Math.PI + Math.max(0, (thickness - 120) * 0.21 / 60)
						distr: 1
				5:
					x: contours[0].nodes[3].expandedTo[0].x - 72
					y: descender - overshoot
					dirIn: 0 + 'deg'
					typeOut: 'smooth'
					tensionIn: 1.5
					expand:
						width: thickness * ( 25 / 85 ) + 70 - Math.max(0, (thickness - 120) * 2 / 60)
						angle: -87 / 180 * Math.PI + Math.max(0, (thickness - 120) * 0.15 / 60)
						distr: 1
				6:
					x: contours[0].nodes[5].expandedTo[0].x - 10 / 85 * thickness - 35
					y: contours[0].nodes[5].expandedTo[0].y - 10 / 85 * thickness - 35
					dirIn: 90 + 'deg'
					expand:
						width: 0
						angle: 0
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 0.25 * contours[1].nodes[0].expand.width
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 93 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: Utils.onLine({
						y: -overshoot / 10,
						on: [contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0]]
					})
					y: - overshoot
					typeIn: 'line'
					expand:
						width: contours[1].nodes[0].expand.width * Math.sin(Math.PI - anchors[0].angleOne) / Math.cos(contours[1].nodes[1].expand.angle + Math.PI / 2 - anchors[0].angleOne)
						angle: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y},{x:  contours[0].nodes[1].expandedTo[0].x, y:  contours[0].nodes[1].expandedTo[0].y}) + Math.PI
						distr: 0
		# TODO:
		# This contour is used to set the spacing
		# We need to call the advanceWidth of the component instead
		# like: glyphs['v'].ot.advanceWidth
		# 4:
		# 	skeleton: true
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: 395 + 17
		# 			y: xHeight - serifHeight * serifCurve
		# 			typeOut: 'line'
		# 			expand:
		# 				width: thickness * ( 39 / 85 )
		# 				angle: 0 + 'deg'
		# 				distr: 0.25
	components:
		0:
			base: ['serif-oblique-acute', 'none']
			id: 'thirdleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
		1:
			base: ['serif-oblique-obtuse', 'none']
			id: 'thirdright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
		2:
			base: ['serif-oblique-obtuse', 'none']
			id: 'thirdleft'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'thirdright'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
