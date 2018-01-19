# TODO: spacing
exports.glyphs['five'] =
	unicode: '5'
	glyphName: 'five'
	characterName: 'DIGIT FIVE'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 30
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
					x: spacingLeft + 10
					y: - 230
					dirOut:( 7 ) / 180 * Math.PI
					expand:
						width: thickness * ( 16 / 85 )
						angle:( 97 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: spacingLeft + 200 * width + 85 + (52)
					y: 20 + (23)
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 80 / 85 )
						angle:( 180 + 21 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: spacingLeft + 35 + (7)
					y: ( 195 / 520 ) * xHeight + (67)
					dirIn: 0
					typeOut: 'line'
					expand:
						width: thickness * ( 90 / 85 )
						angle:( 180 + 84 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: Math.max( contours[0].nodes[2].expandedTo[0].x - ( 40 / 85 ) * thickness, 50 )
					y: contours[0].nodes[2].expandedTo[0].y - contours[0].nodes[2].expand.width * contours[0].nodes[2].expand.distr
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 90 / 85 )
						angle:( 180 + 84 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: thickness * ( 80 / 85 )
						angle:( - 108 ) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x - 50
					y: xHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 75 / 85 )
						angle: - 100 / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[2].expandedTo[0].x + 55 * width
					y: xHeight
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 78 / 85 )
						angle:( - 78 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 30 / 85 )
						angle: 0
						distr: 0
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
				serifHeight: serifHeight + 10
				serifCurve: serifCurve + 30
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				['scaleY', -1],
				['skewX',( serifRotate * (11) ) / 180 * Math.PI]
			)
