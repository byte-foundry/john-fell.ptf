exports.glyphs['M_cap'] =
	unicode: 'M'
	glyphName: 'M'
	characterName: 'LATIN CAPITAL LETTER M'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 15 * spacing + (20) + serifWidth + 40
		spacingRight: 15 * spacing + serifWidth + 40
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x + 20
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: spacingLeft
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 35 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x - 20
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 95 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x + 300 + 250 * width
					y: 0
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 35 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) * 0.5
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x - Math.min( 15 * ( thickness / 85 ), 0 )
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 120 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					expandedTo:
						[
							{
								x: Utils.onLine({
									y: thickness * ( (150 - 20 * width)  / 85 ) * opticThickness
									on: [ contours[3].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
								})
								y: thickness * ( (150 - 20 * width)  / 85 ) * opticThickness
								typeOut: 'line'
							}
							{
								x: Utils.onLine({
									y: thickness * ( (150 - 20 * width)  / 85 ) * opticThickness
									on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
								})
								y: thickness * ( (150 - 20 * width)  / 85 ) * opticThickness
								typeIn: 'line'
							}
						]
				2:
					x: contours[2].nodes[1].expandedTo[0].x + contours[2].nodes[1].expand.width
					y: contours[2].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: contours[2].nodes[1].expand.width
						angle: 0 + 'deg'
						distr: 1
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.min( contours[0].nodes[0].expandedTo[0].y, 0 + serifHeight + serifCurve * ( 120 / 15 ) )
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: Math.min( contours[0].nodes[0].expandedTo[0].y, 0 + serifHeight + serifCurve * ( 120 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.min( contours[0].nodes[0].expandedTo[0].y, 0 + serifHeight + serifCurve * ( 130 / 15 ) )
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: Math.min( contours[0].nodes[0].expandedTo[0].y, 0 + serifHeight + serifCurve * ( 130 / 15 ) )
				2:
					leftWidth: 60
					rightWidth: 60
					baseRight: contours[0].nodes[1].expandedTo[1].point
					baseLeft: contours[0].nodes[1].expandedTo[0].point
					angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.min( contours[1].nodes[0].expandedTo[0].y, 0 + serifHeight + serifCurve * ( 65 / 15 ) )
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: Math.min( contours[1].nodes[0].expandedTo[0].y, 0 + serifHeight + serifCurve * ( 65 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.min( contours[1].nodes[0].expandedTo[0].y, 0 + serifHeight + serifCurve * ( 65 / 15 ) )
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: Math.min( contours[1].nodes[0].expandedTo[0].y, 0 + serifHeight + serifCurve * ( 65 / 15 ) )
				2:
					leftWidth: 40
					rightWidth: 40
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 150 / 15 ) )
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 150 / 15 ) )
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
				2:
					anchorLine: capHeight
					rightWidth: 40
					left: false
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					baseRight: contours[1].nodes[0].expandedTo[1].point
					directionY: -1
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[3].nodes[0].expandedTo[1].x
					y: contours[3].nodes[0].expandedTo[1].y
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 65 / 15 )
						on: [ contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[2].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 65 / 15 )
				2:
					anchorLine: capHeight
					leftWidth: 40
					right: false
					baseLeft: contours[3].nodes[0].expandedTo[0].point
					baseRight: contours[3].nodes[0].expandedTo[1].point
					directionY: -1
					angle: Utils.lineAngle( contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[2].expandedTo[0].point )
