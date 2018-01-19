# TODO: spacing
exports.glyphs['seven'] =
	unicode: '7'
	glyphName: 'seven'
	characterName: 'DIGIT SEVEN'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 5
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
					x: contours[0].nodes[4].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[4].x ) * ( 30 / 370 ) + (16)
					y: ( 220 / 250 ) * descender
					typeOut: 'line'
					expand:
						width: thickness * ( 65 / 85 )
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[4].x + 200 * width + 145 + (6)
					y: ( 485 / 500 ) * xHeight
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 25 / 85 ) * contrast
						angle: 0
						distr: 0.25
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 15 / 500 ) * xHeight
						angle: Math.PI / 2
						distr: 0
				3:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: xHeight
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 75 / 85 )
						angle: Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y},{x:  contours[0].nodes[1].x, y:  contours[0].nodes[1].y} )
						distr: 1
				4:
					x: spacingLeft
					y: xHeight
					typeIn: 'line'
					expand:
						width: thickness * ( 75 / 85 )
						angle: Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y},{x:  contours[0].nodes[1].x, y:  contours[0].nodes[1].y} )
						distr: 1
	components:
		0:
			base: ['serif-horizontal', 'none']
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
			parameters:
				serifMedian: serifMedian * 0.65
				serifWidth: serifWidth - 5
				serifCurve: serifCurve + 30
				serifHeight: serifHeight + 10
				midWidth: midWidth * 0.88
			transformOrigin: contours[0].nodes[4].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1],
				[ 'skewX',( serifRotate * (25) ) / 180 * Math.PI ]
			)
		1:
			base: ['serif-horizontal', 'none']
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[1]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
			parameters:
				serifMedian: serifMedian * 0.65
				serifWidth: serifWidth - 18
				serifCurve: serifCurve + 30
				serifHeight: serifHeight + 10
				midWidth: midWidth * 1.15
			transformOrigin: contours[0].nodes[4].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1],
				[ 'scaleX', -1],
				[ 'skewX',( serifRotate * (25) ) / 180 * Math.PI ]
				['translateX', (contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[4].expandedTo[0].y) * Math.sin((serifRotate - 1) * 25/180 * Math.PI)]
			)
