exports.glyphs['N_cap'] =
	unicode: 'N'
	glyphName: 'N'
	characterName: 'LATIN CAPITAL LETTER N'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (0) + serifWidth + 40
		spacingRight: 50 * spacing + 40 + serifWidth + 40
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 30 / 85 ) * opticThickness
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: thickness * ( 25 / 85 ) * opticThickness
						distr: 0.25
						angle: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 30 / 85 ) * opticThickness
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 200 + 250 * width
					y: 0
					typeIn: 'line'
					expand:
						width: thickness * ( 20 / 85 ) * opticThickness
						distr: 0.25
						angle: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: capHeight * ( ( 135 / 85 ) * thickness / 750 )
						on: [ contours[2].nodes[1].expandedTo[0], contours[1].nodes[1].expandedTo[0] ]
					})
					y: capHeight * ( ( 135 / 85 ) * thickness / 750 )
					typeOut: 'line'
					expand:
						width: thickness * (( 100 / 85 ) / 750 ) * capHeight * opticThickness                            ##### FIXME #####
						angle: Utils.lineAngle({x: contours[2].nodes[1].x, y: contours[2].nodes[1].y},{x:  contours[2].nodes[0].x, y:  contours[2].nodes[0].y} ) + Math.PI / 2   ##### FIXME #####
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[0].x - (thickness * ( 124 / 85 ) * opticThickness) / 2
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: thickness * ( 124 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.1
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
				2:
					x: contours[1].nodes[1].expandedTo[0].x
					y: Utils.onLine({
						x: contours[1].nodes[1].expandedTo[0].x
						on: [ contours[2].nodes[1].expandedTo[1], contours[2].nodes[0].expandedTo[1] ]
					})
					typeIn: 'line'
					typeOut: 'line'
				3:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					typeIn: 'line'
					typeOut: 'line'
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		1:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
					scaleX: -1
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		2:
			base: ['serif-vertical', 'none']
			id: 'toprightleft'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'toprightright'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		4:
			base: ['none', 'serif-oblique-acute']
			id: 'topleftright'
			class: 'upperLeftStumpM'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1]
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		5:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleftleft'
			class: 'upperLeftStumpInsideM'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[2].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
