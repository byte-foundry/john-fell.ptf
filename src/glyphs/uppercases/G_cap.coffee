exports.glyphs['G_cap'] =
	unicode: 'G'
	glyphName: 'G'
	characterName: 'LATIN CAPITAL LETTER G'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55 + (22)
		spacingRight: 50 * spacing + 35 + serifWidth + 20 + (22)
		serifRotate: serifRotate - 1
		serifCurve: serifCurve + 70
		serifWidth: serifWidth + 30
		serifHeight: serifHeight * serifOpticThickness
	anchors:
		0:
			x: contours[0].nodes[1].x
			y: capHeight + diacriticHeight
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[3].expandedTo[0].handleOut, contours[0].nodes[4].expandedTo[0], contours[0].nodes[4].expandedTo[0].handleIn, 100, true )
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
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.43
					y: - overshoot
					typeOut: 'smooth'
					dirIn: 0 + 'deg'
					tensionOut: 1.3
					expand:
						width: thickness * ( 26 / 85 ) * opticThickness
						angle: 70 + 'deg'
						distr: 0
				4:
					x: contours[0].nodes[2].expandedTo[1].x + 340 + 250 * width
					y: 78 - (15)
					typeOut: 'smooth'
					dirIn: - 155 / 180 * Math.PI
					expand:
						width: thickness * ( 16 / 85 ) * opticThickness * contrast
						angle: 108 + 'deg'
						angle: contours[0].nodes[4].dirIn - Math.PI / 2
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[1].x - 80
					# x: anchors[0].junctionBottom.x
					y: Math.max(
						contours[1].nodes[1].y,
						( 325 / 750 ) * capHeight
					)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.9
						angle: 0
				1:
					x: contours[1].nodes[0].x
					y: anchors[0].junctionBottom.y # + thickness * ( 4 / 85 )
					typeOut: 'line'
					expand:
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: Utils.lineAngle({x: contours[0].nodes[3].x, y: contours[0].nodes[3].y},{x:  contours[0].nodes[4].x, y:  contours[0].nodes[4].y} )
						distr: 0.9
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeIn: 'line'
				2:
					x: Utils.onLine({
						y: contours[1].nodes[1].expandedTo[0].y + ( 105 / 85 ) * thickness
						on: [ contours[1].nodes[1].expandedTo[0], contours[1].nodes[0].expandedTo[0] ]
						})
					y: contours[1].nodes[1].expandedTo[0].y + ( 105 / 85 ) * thickness
					dirOut: - 90 + 'deg'
					typeIn: 'line'
	components:
		0:
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
		1:
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
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
				[ 'scaleX', -1 ]
			)
