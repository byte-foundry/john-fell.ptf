# TODO: width / serifs / thickness
exports.glyphs['s'] =
	unicode: 's'
	glyphName: 's'
	characterName: 'LATIN SMALL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 50
		serifRotate: serifRotate - 1
		serifCurve: serifCurve + 100
		serifWidth: serifWidth + 30
	anchors:
		0:
			x: contours[0].nodes[3].x
			y: xHeight + diacriticHeight
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
					x: contours[0].nodes[4].expandedTo[1].x - 30 - (1) - Math.max(0, (thickness - 120) * 25 / 60)
					y: xHeight - ( 80 / 520 ) * xHeight
					dirOut: 115 / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 25 / 85 ) + Math.max(0, (thickness - 120) * 15 / 60)
						angle: contours[0].nodes[0].dirOut + Math.PI / 2 - Math.max(0, (thickness - 120) * 0.06 / 60)
						distr: 0.25
				1:
					# x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					x: (contours[0].nodes[2].x + ( Math.cos( 26 / 180 * Math.PI) * 0.75 * ( 67 / 85 ) * thickness ) ) + ( contours[0].nodes[0].expandedTo[1].x - (contours[0].nodes[2].x + ( Math.cos( 26 / 180 * Math.PI) * 0.75 * ( 67 / 85 ) * thickness ) ) ) * ( 85 / 210 )
					y: xHeight + overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 85 ) * contrast + Math.max(0, (thickness - 120) * 17 / 60)
						angle: - Math.PI / 2
						distr: 0
				2:
					x: contours[0].nodes[6].x + 8 + Math.max(0, (thickness - 120) * 13 / 60)
					y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[3].expandedTo[0].y ) * ( 160 / 290 ) + (8) - Math.max(0, (thickness - 120) * 15 / 60)
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 67 / 85 ) + Math.max(0, (thickness - 120) * 37 / 60)
						angle: 26 / 180 * Math.PI - Math.max(0, (thickness - 120) * 0.03 / 60)
						distr: 0.25
				3:
					x: contours[0].nodes[5].x + Math.max(0, (thickness - 120) * 14 / 60)
					y: xHeight * ( 260 / 520 ) + Math.max(0, (thickness - 120) * 10 / 60)
					dirOut: Math.min(
						- 15,
						Math.max(
							- 20,
							- 15 - (15 - ( 15 / 85 ) * thickness) * width
						)
					) / 180 * Math.PI
					typeIn: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand:
						width: thickness * ( 75 / 85 ) + Math.max(0, (thickness - 120) * 32 / 60)
						angle: 60 / 180 * Math.PI
						distr: 0.5
				4:
					x: contours[0].nodes[6].expandedTo[1].x + 200 * width + 130 - (28) + Math.max(0, (thickness - 120) * 120 / 60)
					y: contours[0].nodes[5].expandedTo[1].y + (  contours[0].nodes[3].expandedTo[1].y - contours[0].nodes[5].expandedTo[1].y ) * ( 140 / 290 ) - (7) - Math.max(0, (thickness - 120) * 3 / 60)
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 70 / 85 ) + Math.max(0, (thickness - 120) * 16 / 60)
						angle: (180 - 160) / 180 * Math.PI + Math.max(0, (thickness - 120) * 0.07 / 60)
						distr: 0.75
				5:
					x: contours[0].nodes[6].expandedTo[0].x + ( (contours[0].nodes[4].x - Math.cos( 20 / 180 * Math.PI ) * 0.75 * ( 70 / 85 ) * thickness) - contours[0].nodes[6].expandedTo[0].x ) * ( 135 / 230 )
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 85 ) * contrast + Math.max(0, (thickness - 120) * 25 / 60)
						angle: 3 *  Math.PI / 2
						distr: 1
				6:
					x: spacingLeft - 0.25 * contours[0].nodes[6].expand.width * Math.cos(contours[0].nodes[6].expand.angle)
					y: ( 100 / 520 ) * xHeight
					dirIn: -1.13446 # - 65 ) / 180 * Math.PI
					typeOut: 'smooth'
					expand:
						width: thickness * ( 25 / 85 ) + Math.max(0, (thickness - 120) * 19 / 60)
						angle: contours[0].nodes[6].dirIn - Math.PI / 2 + Math.max(0, (thickness - 120) * 0.23 / 60)
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
				serifMedian: serifMedian / 2
				serifHeight: serifHeight + 8
				serifWidth: serifWidth - 22
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
				serifCurve: serifCurve - 37
				serifMedian: serifMedian / 2
				serifHeight: serifHeight + 7
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
				serifCurve: serifCurve - 37
				serifMedian: serifMedian / 2
				serifHeight: serifHeight + 7
				serifWidth: serifWidth - 11
		3:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
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
				serifMedian: serifMedian / 2
				serifHeight: serifHeight + 8
				serifWidth: serifWidth - 22
