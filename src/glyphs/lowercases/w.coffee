exports.glyphs['w'] =
	unicode: 'w'
	glyphName: 'w'
	characterName: 'LATIN SMALL LETTER W'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 5 + serifWidth
		spacingRight: 50 * spacing + 5 + serifWidth
	anchors:
		0:
			x: 395
			y: xHeight
			angleOne: Utils.lineAngle({x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}, {x: contours[1].nodes[0].expandedTo[0].x, y: contours[1].nodes[0].expandedTo[0].y})
			angleTwo: Utils.lineAngle({x: contours[3].nodes[1].x, y: contours[3].nodes[1].y}, {x: contours[3].nodes[0].expandedTo[0].x, y: contours[3].nodes[0].expandedTo[0].y})
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: contours[0].nodes[0].y
						on: [ contours[3].nodes[0].expandedTo[0], contours[3].nodes[1].expandedTo[0] ]
					}) + thickness * ( 33 / 85 ) * 0.25
					y: xHeight * ( 350 / 500 ) + Math.max(0, (thickness - 120) * 60 / 60)
					typeOut: 'line'
					expand:
						width: thickness * ( 33 / 85 )
						angle: 0
						distr: 0.25
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * 0.45 - Math.max(0, (thickness - 120) * 16 / 60)
					y: - overshoot
					typeIn: 'line'
					expand:
						width: thickness * ( 25 / 85 )
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 0.75 * contours[1].nodes[0].expand.width
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 95 / 85 )
						angle: 0
						distr: 0.75
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: - overshoot
					typeIn: 'line'
					expand:
						width: contours[1].nodes[0].expand.width * Math.sin(Math.PI - anchors[0].angleOne) / Math.cos(contours[1].nodes[1].expand.angle + Math.PI / 2 - anchors[0].angleOne)
						angle: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y},{x:  contours[0].nodes[1].expandedTo[0].x, y:  contours[0].nodes[1].expandedTo[0].y}) + Math.PI
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[3].nodes[0].expandedTo[1].x + 90 + 180 * width - (10) + ( thickness * ( 40 / 85 ) / 2 ) - Math.max(0, (thickness - 120) * 45 / 60)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 40 / 85 )
						angle: 0
						distr: 0.25
				1:
					x: contours[3].nodes[0].expandedTo[1].x + ( contours[2].nodes[0].expandedTo[0].x - contours[3].nodes[0].expandedTo[1].x ) * 0.35 - Math.max(0, (thickness - 120) * 16 / 60)
					y: - overshoot
					typeIn: 'line'
					expand:
						width: thickness * ( 25 / 85 )
						angle: 0
						distr: 0.25
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 180 * width - (10) + ( thickness * ( 95 / 85 ) / 2 )
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 95 / 85 )
						angle: 0
						distr: 0.5
				1:
					x: contours[2].nodes[1].expandedTo[0].x
					y: - overshoot
					typeIn: 'line'
					expand:
						width: contours[3].nodes[0].expand.width * Math.sin(Math.PI - anchors[0].angleTwo) / Math.cos(contours[3].nodes[1].expand.angle + Math.PI / 2 - anchors[0].angleTwo)
						angle: Utils.lineAngle({x: contours[2].nodes[0].expandedTo[0].x, y: contours[2].nodes[0].expandedTo[0].y},{x:  contours[2].nodes[1].expandedTo[0].x, y:  contours[2].nodes[1].expandedTo[0].y}) + Math.PI
						distr: 0
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'firstleft'
			class: 'obtuseTopOutsideLeft'
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
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'firstright'
			class: 'acuteTopInsideLeft'
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
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'secondleft'
			class: 'acuteTopInsideRight'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[2].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'secondright'
			class: 'obtuseTopOutsideRight'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[1]
			transformOrigin: contours[2].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'thirdleft'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[0]
					noneAnchor: contours[3].nodes[0].expandedTo[0]
					opposite: contours[3].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[3].nodes[1].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[3].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'thirdright'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[1]
					noneAnchor: contours[3].nodes[0].expandedTo[1]
					opposite: contours[3].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[3].nodes[1].expandedTo[1]
			transformOrigin: contours[3].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
