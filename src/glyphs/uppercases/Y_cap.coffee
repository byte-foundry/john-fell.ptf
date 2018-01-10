exports.glyphs['Y_cap'] =
	unicode: 'Y'
	glyphName: 'Y'
	characterName: 'LATIN CAPITAL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (20) + serifWidth
		spacingRight: 50 * spacing + 10 + serifWidth + 15
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
					y: 0
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.3
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: capHeight * ( 340 / 750 )
					typeIn: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.3
						angle: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					typeOut: 'line'
					expandedTo:
						[
							{
								x: contours[0].nodes[1].expandedTo[1].x - ( 18 / 85 ) * thickness * contrast
								y: contours[0].nodes[1].expandedTo[1].y
							}
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[0].nodes[1].expandedTo[1].y - ( 15 / 85 ) * thickness * contrast
							}
						]
				1:
					x: contours[2].nodes[1].expandedTo[1].x + 190 + 250 * width + (12)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: thickness * ( 50 / 85 ) * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					typeOut: 'line'
					expandedTo:
						[
							{
								x: contours[0].nodes[1].expandedTo[0].x
								y: contours[0].nodes[1].expandedTo[0].y - ( 18 / 85 ) * thickness
							}
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[0].nodes[1].expandedTo[1].y
							}
						]
				1:
					x: spacingLeft
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: thickness * ( 118 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'thirdleft'
			class: 'vLeft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[2].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
				serifWidth: serifWidth + 5
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'thirdright'
			class: 'vLeftInside'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1]
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
				serifWidth: serifWidth + 40
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'thirdleft2'
			class: 'vRightInside'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
				serifWidth: serifWidth + 60
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'thirdright2'
			class: 'vRight'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifCurve: serifCurve + 40
				serifWidth: serifWidth + 30
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			parameters:
				serifCurve: serifCurve + 55
				serifWidth: serifWidth + 40
		5:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				['scaleX', -1]
			)
			parameters:
				serifCurve: serifCurve + 55
				serifWidth: serifWidth + 40
