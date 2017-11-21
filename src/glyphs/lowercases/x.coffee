exports.glyphs['x'] =
	unicode: 'x'
	glyphName: 'x'
	characterName: 'LATIN SMALL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + serifWidth - 10
		spacingRight: 50 * spacing + serifWidth + 5
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
					x: contours[2].nodes[1].expandedTo[0].x + 10 + 0.25 * contours[0].nodes[0].expand.width
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 104 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[2].nodes[1].expandedTo[1].x + 280 * width + (25)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: thickness * ( 104 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + 280 * width - (15),
						contours[0].nodes[1].expandedTo[0].x
					)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: Utils.onLine({
						y: xHeight * ( 240 / 500 ) + Math.min( 0, - ( 50 / 85 ) * thickness + 50 )
						on: [ contours[0].nodes[0], contours[0].nodes[1] ]
					})
					y: xHeight * ( 240 / 500 ) + Math.min( 0, - ( 50 / 85 ) * thickness + 50 )
					typeIn: 'line'
					expand:
						width: thickness * ( 23 / 85 ) * width
						angle: 0 + 'deg'
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: xHeight * ( 240 / 500 )
						on: [ contours[0].nodes[0], contours[0].nodes[1] ]
					})
					y: xHeight * ( 240 / 500 )
					typeOut: 'line'
					expand:
						width: thickness * ( 23 / 85 ) * width
						angle: 0 + 'deg'
						distr: 0.75
				1:
					x: spacingLeft + 0.75 * contours[2].nodes[1].expand.width
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.75
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
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
			base: ['serif-oblique-acute', 'none']
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
			base: ['serif-oblique-acute', 'none']
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
			base: ['serif-oblique-obtuse', 'none']
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
		4:
			base: ['serif-oblique-acute', 'none']
			id: 'thirdleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1]
					scaleX: -1
			parameters:
				serifCurve: serifCurve + 40
		5:
			base: ['serif-oblique-obtuse', 'none']
			id: 'thirdright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0]
			parameters:
				serifCurve: serifCurve + 40
		6:
			base: ['serif-oblique-obtuse', 'none']
			id: 'thirdleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1]
					scaleX: -1
			parameters:
				serifCurve: serifCurve + 40
		7:
			base: ['serif-oblique-acute', 'none']
			id: 'thirdright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0]
			parameters:
				serifCurve: serifCurve + 40
