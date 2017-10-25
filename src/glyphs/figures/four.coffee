# TODO: spacing
exports.glyphs['four'] =
	unicode: '4'
	glyphName: 'four'
	characterName: 'DIGIT FOUR'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 25
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
					x: 190 + 130 * width + (85)
					x: contours[1].nodes[2].expandedTo[0].x + 200 * width + 200
					y: descender * ( 220 / 250 )
					typeOut: 'line'
					expand:
						width: thickness
						distr: 1
						angle: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Utils.onLine({
						x: contours[0].nodes[0].expandedTo[1].x - thickness
						on: [ contours[2].nodes[0].expandedTo[1], contours[2].nodes[1].expandedTo[1] ]
					})
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 1
						angle: 0
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight + overshoot + ( 20 / 500 ) * xHeight
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 11 / 85 )
						distr: 1
						angle: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 180 * width
					y: 0
					typeOut: 'line'
					expand:
						width: ( 65 / 85 ) * thickness
						distr: 0
						angle: 90 + 'deg'
				1:
					typeOut: 'line'
					typeIn: 'line'
					expandedTo: [
						x: Utils.onLine({
							y: 0
							on: [ contours[2].nodes[0].expandedTo[1], contours[2].nodes[1].expandedTo[1] ]
						})
						y: 0
					,
						x: Utils.onLine({
							y: contours[1].nodes[0].expandedTo[1].y
							on: [ contours[2].nodes[0].expandedTo[1], contours[2].nodes[1].expandedTo[1] ]
						})
						y: contours[1].nodes[0].expandedTo[1].y
					]
				2:
					x: spacingLeft + (10)
					y: 0
					typeIn: 'line'
					expand:
						width: ( 15 / 85 ) * thickness
						distr: 0
						angle: 90 + 'deg'
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[2].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 40 / 85 ) * thickness
						distr: 0
						angle: 0
				1:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: ( 50 / 85 ) * thickness
						distr: 0
						angle: - 90 + 'deg'
	components:
		0:
			base: ['serif-horizontal', 'none']
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
			parameters:
				serifMedian: serifMedian * 0.65
				serifWidth: serifWidth - 10
				serifCurve: serifCurve + 30
				serifHeight: serifHeight + 10
				midWidth: midWidth * 1.06
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array( [ 'skewX', serifRotate * (8) + 'deg' ] )
		1:
			base: ['serif-horizontal', 'none']
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
			parameters:
				serifMedian: serifMedian * 0.65
				serifCurve: serifCurve + 30
				serifWidth: serifWidth + 5
				serifHeight: serifHeight + 10
				midWidth: midWidth * 0.95
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				['scaleY', -1],
				['skewX', serifRotate * (8) + 'deg'],
				['translateX', (contours[1].nodes[0].expandedTo[1].y - contours[1].nodes[0].expandedTo[0].y) * Math.sin(serifRotate * 8/180 * Math.PI)]
			)
