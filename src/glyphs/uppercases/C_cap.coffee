exports.glyphs['C_cap'] =
	unicode: 'C'
	glyphName: 'C'
	characterName: 'LATIN CAPITAL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55 + (22)
		spacingRight: 50 * spacing + 50
		serifRotate: serifRotate - 1
		serifCurve: serifCurve + 70
		serifWidth: serifWidth + 30
		serifHeight: serifHeight * serifOpticThickness
	anchors:
		0:
			x: contours[0].nodes[1].x
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
					x: contours[0].nodes[2].expandedTo[1].x + 280 + 250 * width
					y: capHeight - ( 125 / 750 ) * capHeight + Math.min( - 20 * aperture + 20, - 125 * aperture + 125 )
					dirOut: 150 - 20 * aperture + 'deg'
					typeIn: 'smooth'
					tensionIn: 1.45
					expand:
						width: thickness * ( 30 / 85 ) * opticThickness + thickness * ( 10 / 85 ) * opticThickness * contrast
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0.25
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					tensionIn: 1.45
					expand:
						width: thickness * ( 27 / 85 ) * opticThickness * contrast
						angle: - 68 + 'deg'
						distr: 0
				2:
					x: spacingLeft
					y: capHeight * ( 375 / 750 )
					typeIn: 'smooth'
					expand:
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.48
					y: - overshoot
					typeOut: 'smooth'
					dirIn: 0 + 'deg'
					tensionOut: 1.3
					expand:
						width: thickness * ( 25 / 85 ) * opticThickness * contrast
						angle: 68 + 'deg'
						distr: 0
				4:
					x: contours[0].nodes[0].x
					y: Math.max( - overshoot + thickness / 10, 40 + xHeight * ( 60 / 500 ) * aperture )
					y: ( 125 / 750 ) * capHeight - Math.min( 20 * aperture - 20, 125 * aperture - 125 )
					dirIn: Math.min( - 180 + ( 50 / 500 ) * xHeight * aperture , - 90 ) / 180 * Math.PI
					expand:
						width: thickness * ( 30 / 85 ) * opticThickness + thickness * ( 10 / 85 ) * opticThickness * contrast
						angle: contours[0].nodes[4].dirIn - Math.PI / 2
						distr: 0.25
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[4].dirIn
					baseWidth: contours[0].nodes[4].expandedTo[1]
					baseHeight: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
					curveEnd: contours[0].nodes[3].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[0]
			parameters:
				serifMedian: serifMedian * 0.375
				serifHeight: serifHeight + 35
				serifWidth: serifWidth - 15
				serifCurve: serifCurve + 35
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[4].dirIn
					baseWidth: contours[0].nodes[4].expandedTo[0]
					baseHeight: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
					curveEnd: contours[0].nodes[3].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[0]
					down: true
					inverseOrder: true
			parameters:
				serifMedian: serifMedian / 2
				serifHeight: serifHeight + 10
				serifWidth: serifWidth + 24
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
				serifWidth: serifWidth + 21
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
