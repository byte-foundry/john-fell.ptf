exports.glyphs['Y_cap'] =
	unicode: 'Y'
	glyphName: "Y"
	characterName: "LATIN CAPITAL LETTER Y"
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 10 * spacing + (20) + serifWidth
		spacingRight: 10 * spacing + serifWidth + 15
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[1].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[1].x - contours[2].nodes[1].expandedTo[0].x ) * 0.5
					y: 0 + serifHeight + serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.3
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight * ( 340 / 750 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.3
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[0].nodes[1].expandedTo[1].x - ( 18 / 85 ) * thickness * contrast
								y: contours[0].nodes[1].expandedTo[1].y
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[0].nodes[1].expandedTo[1].y - ( 15 / 85 ) * thickness * contrast
								typeIn: 'line'
							}
						]
				1:
					x: contours[2].nodes[1].expandedTo[1].x + 190 + 250 * width + (12)
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 50 / 85 ) * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[0].nodes[1].expandedTo[0].x
								y: contours[0].nodes[1].expandedTo[0].y - ( 18 / 85 ) * thickness
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[0].nodes[1].expandedTo[1].y
								typeIn: 'line'
							}
						]
				1:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 118 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: 0
					leftWidth: 40
					rightWidth: 40
					# max0: contours[0].nodes[1].point
					# max1: contours[0].nodes[1].point
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 120 / 15 )
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 120 / 15 )
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 110 / 15 )
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 110 / 15 )
				2:
					anchorLine: capHeight
					leftWidth: 40
					rightWidth: 20
					baseRight: contours[1].nodes[1].expandedTo[1].point
					baseLeft: contours[1].nodes[1].expandedTo[0].point
					min0: contours[1].nodes[0].expandedTo[0].point
					min1: contours[1].nodes[0].expandedTo[0].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point )
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 120 / 15 )
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 120 / 15 )
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 120 / 15 )
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 120 / 15 )
				2:
					anchorLine: capHeight
					leftWidth: 0
					rightWidth: 40
					baseRight: contours[2].nodes[1].expandedTo[1].point
					baseLeft: contours[2].nodes[1].expandedTo[0].point
					max0: contours[2].nodes[0].point
					max1: contours[2].nodes[0].point
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
					directionY: -1
