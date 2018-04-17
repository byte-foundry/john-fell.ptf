exports.glyphs['A_cap'] =
	unicode: 'A'
	glyphName: 'A'
	characterName: 'LATIN CAPITAL LETTER A'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (20) + serifWidth * 1.8
		spacingRight: 50 * spacing + 15 + serifWidth + 15
		serifHeight: serifHeight * serifOpticThickness
		serifCurve: serifCurve + 85
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 200 + 232 * width + (20)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 105 / 85 ) * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * 0.53
					y: capHeight - capHeight * ( 30 / 750 ) * thickness / 85
					typeIn: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 30 / 85 ) * opticThickness * contrast
						angle: 0
						distr: 0.25
				1:
					x: Utils.onLine({
						y: contours[0].nodes[1].y - 10
						on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
					})
					y: contours[0].nodes[1].y - 10
					typeIn: 'line'
					expand:
						width: thickness * ( 20 / 85 ) * opticThickness * contrast
						angle: 0
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: capHeight * ( 280 / 750 ) * crossbar
						on: [ contours[0].nodes[0], contours[0].nodes[1] ]
					})
					y: capHeight * ( 298 / 750 ) * crossbar
					typeOut: 'line'
					expand:
						width: thickness * ( 26 / 85 ) * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0.75
				1:
					x: Utils.onLine({
						y: contours[2].nodes[0].y
						on: [ contours[1].nodes[1], contours[1].nodes[0] ]
					})
					y: contours[2].nodes[0].y
					typeIn: 'line'
					expand:
						width: thickness * ( 26 / 85 ) * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0.75
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeIn: 'line'
					typeOut: 'line'
				1:
					x: Utils.onLine({
						y: capHeight + overshoot * 2
						on: [ contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1] ]
					})
					y: capHeight + overshoot * 2
					typeIn: 'line'
					typeOut: 'line'
				2:
					x: contours[3].nodes[1].x - Math.min( 15, thickness * ( 10 / 85 ) )
					y: contours[3].nodes[1].y
					dirOut: Math.min(
						- 80,
						Math.max(
							- 140,
							- 140 + serifCurve )
						) / 180 * Math.PI
					tensionOut: serifRoundness
				3:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirIn:( 8 ) / 180 * Math.PI
					tensionIn: serifRoundness
	components:
		0:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft'
			class: 'insideLeftAcute'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
			parameters:
				serifWidth: serifWidth + 70
		1:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright'
			class: 'outsideLeftObtuse'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
					scaleX: -1
			parameters:
				serifWidth: serifWidth + 30
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			class: 'insideRightAcute'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
					scaleX: -1
			parameters:
				serifWidth: serifWidth + 70
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			class: 'outsideRightObtuse'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
			parameters:
				serifWidth: serifWidth + 70
