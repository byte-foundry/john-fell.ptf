# TODO: width / serifs / thickness
exports.glyphs['S_cap'] =
	unicode: 'S'
	glyphName: 'S'
	characterName: 'LATIN CAPITAL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 40
		serifRotate: serifRotate - 1
		serifCurve: serifCurve + 70
		serifWidth: serifWidth + 30
		serifHeight: serifHeight * serifOpticThickness
	anchors:
		0:
			x: contours[0].nodes[1].x + ( contours[0].nodes[3].x - contours[0].nodes[1].x ) * 0.5
			y: capHeight + diacriticHeight
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
					x: contours[0].nodes[4].expandedTo[1].x - 40 - (7)
					y: capHeight - ( 110 / 750 ) * capHeight
					# dirOut: Math.max(
					# 	1.8,
					# 	Math.PI - ( 1.06 / 750 ) * capHeight
					# ) # 120 + 'deg'
					dirOut: 115 / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 32 / 85 ) * thickness * opticThickness
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0.25
				1:
					# x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					x: (contours[0].nodes[2].x + ( Math.cos( 26 / 180 * Math.PI) * 0.75 * ( 67 / 85 ) * thickness ) ) + ( contours[0].nodes[0].expandedTo[1].x - (contours[0].nodes[2].x + ( Math.cos( 26 / 180 * Math.PI) * 0.75 * ( 67 / 85 ) * thickness ) ) ) * ( 85 / 210 )
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 25 / 85 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: spacingLeft + 15 + (19)
					y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[3].expandedTo[0].y ) * ( 160 / 290 ) + (8)
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 87 / 85 ) * thickness * opticThickness
						angle: 26 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[5].x
					y: ( 375 / 750 ) * capHeight
					dirOut: Math.min(
						- 20,
						Math.max(
							- 25,
							- 20 - (15 - ( 15 / 85 ) * thickness * opticThickness) * width
						)
					) + 'deg'
					typeIn: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand:
						width: ( 120 / 85 ) * thickness * opticThickness
						angle: 180 - 120 + 'deg'
						distr: 0.5
				4:
					x: contours[0].nodes[6].expandedTo[1].x + 200 * width + 260 - (19)
					y: contours[0].nodes[5].expandedTo[1].y + (  contours[0].nodes[3].expandedTo[1].y - contours[0].nodes[5].expandedTo[1].y ) * ( 195 / 405 ) - (12)
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 85 / 85 ) * thickness * opticThickness
						angle: 180 - 160 + 'deg'
						distr: 0.75
				5:
					# x: contours[0].nodes[6].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[6].expandedTo[1].x ) * 0.5
					# x: Math.max(
					# 	contours[0].nodes[6].expandedTo[1].x + ( (contours[0].nodes[4].x + Math.cos( 20 / 180 * Math.PI ) * 0.25 * ( 70 / 85 ) * thickness) - contours[0].nodes[6].expandedTo[1].x ) * ( 170 / 330 ),
					# 	contours[0].nodes[6].expandedTo[0].x + ( (contours[0].nodes[4].x - Math.cos( 20 / 180 * Math.PI ) * 0.75 * ( 70 / 85 ) * thickness) - contours[0].nodes[6].expandedTo[0].x ) * ( 170 / 330 )
					# )
					x: contours[0].nodes[6].expandedTo[0].x + ( (contours[0].nodes[4].x - Math.cos( 20 / 180 * Math.PI ) * 0.75 * ( 70 / 85 ) * thickness) - contours[0].nodes[6].expandedTo[0].x ) * ( 135 / 230 )
					y: - overshoot
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 32 / 85 ) * thickness * opticThickness * contrast
						angle: 180 + 90 + 'deg'
						distr: 1
				6:
					x: spacingLeft + (7)
					y: ( 150 / 750 ) * capHeight
					# dirIn: Math.min(
					# 	1.8,
					# 	Math.PI + ( 2 / 750 ) * capHeight
					# ) # 120 + 'deg'
					dirIn: -1.13446 # - 65 + 'deg'
					typeOut: 'smooth'
					expand:
						width: ( 32 / 85 ) * thickness * opticThickness
						angle: contours[0].nodes[6].dirIn - Math.PI / 2
						distr: 0.75
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottom'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[6].dirIn
					baseWidth: contours[0].nodes[6].expandedTo[0]
					baseHeight: contours[0].nodes[6].expandedTo[1]
					noneAnchor: contours[0].nodes[6].expandedTo[0]
					opposite: contours[0].nodes[6].expandedTo[1]
					curveEnd: contours[0].nodes[5].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[6].expandedTo[1]
					left: true
					inverseOrder: true
			parameters:
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 35
				serifWidth: serifWidth - 15
				serifCurve: serifCurve + 35
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottomtop'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[6].dirIn
					baseWidth: contours[0].nodes[6].expandedTo[1]
					baseHeight: contours[0].nodes[6].expandedTo[1]
					noneAnchor: contours[0].nodes[6].expandedTo[1]
					opposite: contours[0].nodes[6].expandedTo[0]
					curveEnd: contours[0].nodes[5].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[6].expandedTo[1]
					down: true
					left: true
			parameters:
				serifMedian: serifMedian / 2
				serifHeight: serifHeight + 10
				serifWidth: serifWidth + 52
		2:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirOut
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					curveEnd: contours[0].nodes[1].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
			parameters:
				serifMedian: serifMedian / 2
				serifHeight: serifHeight + 10
				serifWidth: serifWidth + 16
				serifCurve: serifCurve - 20
		3:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirOut
					baseWidth: contours[0].nodes[0].expandedTo[1]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					curveEnd: contours[0].nodes[1].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
					down: true
					inverseOrder: true
			parameters:
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 35
				serifWidth: serifWidth - 15
				serifCurve: serifCurve + 35
