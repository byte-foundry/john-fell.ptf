exports.glyphs['euro'] =
	unicode: '€'
	glyphName: 'Euro'
	characterName: 'EURO SIGN'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 50
	anchors:
		0:
			x: contours[0].nodes[1].x
			y: capHeight + diacriticHeight
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], serifHeight + Math.min( 180, serifCurve * ( 180 / 15 ) ), true )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight + Math.min( 130, serifCurve * ( 130 / 15 ) ) )
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], serifHeight + Math.min( 150, serifCurve * ( 150 / 15 ) ) )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], serifHeight + Math.min( 130, serifCurve * ( 130 / 15 ) ), true )
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
					x: spacingLeft + (22) + 50
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
					dirIn: Math.min( - 180 + ( 50 / 500 ) * xHeight * aperture , - 90 ) + 'deg'
					expand:
						width: thickness * ( 30 / 85 ) * opticThickness + thickness * ( 10 / 85 ) * opticThickness * contrast
						angle: contours[0].nodes[4].dirIn - Math.PI / 2
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: contours[0].nodes[2].y + 25
					typeOut: 'line'
					expand:
						width: ( 65 / 90 ) * thickness
						angle: 82 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.2
					y: contours[0].nodes[2].y + 25
					typeOut: 'line'
					expand:
						width: ( 65 / 90 ) * thickness
						angle: 82 + 'deg'
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: contours[0].nodes[2].y - 25
					typeOut: 'line'
					expand:
						width: ( 65 / 90 ) * thickness
						angle: 82 + 'deg'
						distr: 1
				1:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.2
					y: contours[0].nodes[2].y - 25
					typeOut: 'line'
					expand:
						width: ( 65 / 90 ) * thickness
						angle: 82 + 'deg'
						distr: 1
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[4].expandedTo[1]
					baseHeight: contours[0].nodes[4].expandedTo[1]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
					curveEnd: contours[0].nodes[3].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[1]
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[1]
					baseHeight: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					curveEnd: contours[0].nodes[1].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[0].expandedTo[1]
