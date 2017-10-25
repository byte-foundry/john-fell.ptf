# TODO: winding rules
exports.glyphs['X_cap'] =
	unicode: 'X'
	glyphName: 'X'
	characterName: 'LATIN CAPITAL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (30) + serifWidth + 25
		spacingRight: 50 * spacing + 10 + serifWidth + 15
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
					x: contours[2].nodes[0].expandedTo[0].x + 25
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 118 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[2].nodes[0].expandedTo[1].x + 220 + 250 * width + (0)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: thickness * ( 119 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 35 / 85 ) * thickness
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 45 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: Utils.onLine({
						y: capHeight * ( 395 / 750 )
						on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[1] ]
					})
					y: capHeight * ( 395 / 750 )
					x: contours[2].nodes[1].x
					y: contours[2].nodes[1].y
					typeIn: 'line'
					expand:
						width: thickness * ( 25 / 85 ) * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 40 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
				1:
					x: Utils.onLine({
						y: capHeight * ( 380 / 750 )
						on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[1] ]
					})
					y: capHeight * ( 380 / 750 )
					typeIn: 'line'
					expand:
						width: thickness * ( 25 / 85 ) * opticThickness
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
				serifWidth: serifWidth + 5
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
				serifWidth: serifWidth + 40
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
				serifWidth: serifWidth + 60
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
				serifWidth: serifWidth + 30
		4:
			base: ['serif-oblique-acute', 'none']
			id: 'thirdleft'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[1]
					scaleX: -1
			parameters:
				serifCurve: serifCurve + 40
				serifWidth: serifWidth + 60
		5:
			base: ['serif-oblique-obtuse', 'none']
			id: 'thirdright'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[0]
			parameters:
				serifCurve: serifCurve + 40
				serifWidth: serifWidth + 30
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
				serifWidth: serifWidth + 5
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
				serifWidth: serifWidth + 40
