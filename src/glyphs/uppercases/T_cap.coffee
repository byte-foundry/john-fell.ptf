exports.glyphs['T_cap'] =
	unicode: 'T'
	ot:
		advanceWidth: contours[1].nodes[0].x - 45 * spacing
	anchors:
		0:
			x: 710 * width
			y: capHeight
		1:
			x: 45
			y: capHeight
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
					x: anchors[1].x + ( anchors[0].x - anchors[1].x ) / 2
					y: 0 + serifHeight + serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x - serifHeight - serifCurve * ( 100 / 15 )
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 25 / 85 )
						angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: anchors[1].x + serifHeight + serifCurve * ( 100 / 15 )
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 25 / 85 )
						angle: 90 + 'deg'
						distr: 1
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
		1:
			base: 'serif-v'
			parentAnchors:
				0:
					x: anchors[0].x - serifHeight - serifCurve * ( 100 /15 )
					y: anchors[0].y
				1:
					x: anchors[0].x - serifHeight - serifCurve * ( 100 /15 )
					y: anchors[0].y - thickness * opticThickness * ( 25 / 85 )
				2:
					anchorLine: anchors[0].x
					leftWidth: 40
					# maxWidth: capHeight + 40  #TODO: implement maxwidth with value on serif-v
			parentParameters:
				serifMedian: serifMedian * 0.75
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[0].expandedTo[1].x, contours[1].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (-20) + 'deg' ] )
		2:
			base: 'serif-v'
			parentAnchors:
				0:
					x: anchors[1].x + serifHeight + serifCurve * ( 100 /15 )
					y: anchors[1].y
				1:
					x: anchors[1].x + serifHeight + serifCurve * ( 100 /15 )
					y: anchors[1].y - thickness * opticThickness * ( 25 / 85 )
				2:
					anchorLine: anchors[1].x
					leftWidth: 40
					directionX: -1
			parentParameters:
				serifMedian: serifMedian * 0.75
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[1].expandedTo[1].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (20) + 'deg' ] )
