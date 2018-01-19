exports.glyphs['B_cap'] =
	unicode: 'B'
	glyphName: 'B'
	characterName: 'LATIN CAPITAL LETTER B'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (25) + serifWidth + 40
		spacingRight: 50 * spacing + 40
		serifHeight: serifHeight * serifOpticThickness
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
					x: spacingLeft
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 20 / 85 ) * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[0].x + 85 * width
					y: contours[1].nodes[0].y
					dirOut: 0
					tensionOut: 1.35
					expand:
						width: thickness * ( 45 / 85 ) * opticThickness * contrast
						angle:( - 153 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[1].nodes[1].expandedTo[0].x + 200 * width + (62)
					# x: ( 515 + (75) ) * width
					y: contours[1].nodes[3].y + ( contours[1].nodes[1].y - contours[1].nodes[3].y ) / 2
					dirIn: Math.PI / 2
					typeOut: 'smooth'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						angle:( 180 + 6 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[0].expandedTo[0].x + 100
					y: ( 385 / 750 ) * capHeight
					typeOut: 'line'
					dirIn: 0
					expand:
						width: thickness * ( 20 / 85 ) * opticThickness * contrast
						angle:( 119 ) / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: thickness * ( 20 / 85 ) * opticThickness * contrast
						angle: Math.PI / 2
						distr: 1
				4:
					expandedTo: [
						x: contours[0].nodes[0].expandedTo[1].x
						y: contours[1].nodes[3].expandedTo[0].y
					,
						x: contours[0].nodes[0].expandedTo[1].x
						y: contours[1].nodes[3].expandedTo[1].y
					]
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[4].x
					y: contours[2].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: thickness * ( 18 / 85 ) * opticThickness * contrast
						angle: 180 + Math.PI / 2
						distr: 1
				0:
					expandedTo: [
						x: contours[0].nodes[0].expandedTo[1].x
						y: contours[1].nodes[3].expandedTo[1].y
					,
						x: contours[0].nodes[0].expandedTo[1].x
						y: contours[1].nodes[3].expandedTo[0].y
					]
				1:
					x: contours[1].nodes[0].expandedTo[0].x + 145
					y: contours[1].nodes[3].expandedTo[1].y
					dirOut: 0
					expand:
						width: thickness * ( 67 / 85 ) * opticThickness * contrast
						angle:( 180 + 15 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[2].nodes[3].y + ( contours[2].nodes[1].y - contours[2].nodes[3].y ) / 2
					typeIn: 'smooth'
					tensionOut: 1.35
					expand:
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 120
					y: 0
					dirIn: 0
					expand:
						width: thickness * ( 32 / 85 ) * opticThickness * contrast
						angle: - 38 + Math.PI
						distr: 0
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[3].expandedTo[1].x
					y: contours[2].nodes[3].expandedTo[1].y
					typeOut: 'line'
				1:
					x: contours[3].nodes[0].x - 50
					y: contours[3].nodes[0].y
					dirOut: Math.PI
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( serifHeight + serifCurve ) * ( 80 / 35 )
					dirIn: - Math.PI / 2
					typeOut: 'line'
				3:
					x: contours[3].nodes[2].x
					y: 0
					typeOut: 'line'
				4:
					x: contours[2].nodes[3].expandedTo[0].x
					y: contours[2].nodes[3].expandedTo[0].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
