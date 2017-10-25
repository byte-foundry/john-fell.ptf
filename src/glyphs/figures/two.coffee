# TODO: spacing
exports.glyphs['two'] =
	unicode: '2'
	glyphName: 'two'
	characterName: 'DIGIT TWO'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 100
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
					x: contours[0].nodes[3].x + 14 + (4)
					y: ( 295 / 500 ) * xHeight - (2)
					dirOut: 79 + 'deg'
					expand:
						width: thickness * ( 18 / 85 )
						angle: 180 - 12 + 'deg'
						distr: 0.75
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: Math.min( thickness * ( 78 / 85 ), 120 )
						angle: 180 - 124 + 'deg'
						distr: 1
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 195 - (36),
						contours[0].nodes[0].expandedTo[1].x + 0.25 * thickness * ( 87 / 85 ) + 10
					)
					y: ( 335 / 500 ) * xHeight + (5)
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					tensionOut: 1.3
					expand:
						width: thickness * ( 87 / 85 )
						angle: 13 + 'deg'
						distr: 0.75
				3:
					x: spacingLeft
					y: 0
					dirIn: 27 + 'deg'
					tensionIn: 0.9
					typeOut: 'smooth'
					expand:
						width: ( 15 / 85 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[0].nodes[3].expandedTo[0].x
								y: 0
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[3].expandedTo[0].x + thickness * ( 128 / 85 ) * width
								y: contours[1].nodes[1].expandedTo[1].y
								typeIn: 'line'
							}
						]
				1:
					x: contours[0].nodes[2].x + 10
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 89 / 85 )
						angle: 58 + 'deg'
						distr: 0
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1],
				[ 'skewX', 35 * serifRotate + 'deg' ]
			)
			parameters:
				serifMedian: serifMedian * 0.65
				midWidth: midWidth * 0.914
				serifCurve: serifCurve + 50
