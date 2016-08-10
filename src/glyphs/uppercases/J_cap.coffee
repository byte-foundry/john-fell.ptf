exports.glyphs['J_cap'] =
	unicode: 'J'
	glyphName: 'J'
	characterName: 'LATIN CAPITAL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (45) + serifWidth + 40
		spacingRight: 50 * spacing + 40 + serifWidth + 40
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].x
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight - serifHeight - serifCurve * ( 60 / 15 )
					typeOut: 'line'
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: 0 + (22)
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.4
					expand: Object({
						width: thickness * ( (134 + (80)) / 85 ) * opticThickness
						angle: 180 - 138 + 20 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x - 80 - 45 * width
					y: - 220
					dirIn: 0 + 'deg'
					# dirOut: 0 + 'deg'
					tensionIn: 0.7
					type: 'smooth'
					expand: Object({
						width: thickness * ( 43 / 85 ) * opticThickness * contrast
						angle: - 125 + 'deg'
						distr: 1
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: 180 + 'deg'
				1:
					x: contours[1].nodes[0].x - ( 75 / 85 ) * thickness
					y: contours[1].nodes[0].y + ( 80 / 85 ) * thickness
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[1].nodes[1].x - ( 45 / 85 ) * thickness
					y: contours[1].nodes[1].y - ( 45 / 85 ) * thickness
					dirOut: - 90 + 'deg'
					type: 'smooth'
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: capHeight
					leftWidth: 40
					rightWidth: 40
					directionY: -1
