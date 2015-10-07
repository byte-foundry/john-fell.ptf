exports.glyphs['G_cap'] =
	unicode: 'G'
	ot:
		advanceWidth: Math.max( contours[0].nodes[4].expandedTo[1].x + 10 * spacing, contours[2].nodes[0].expandedTo[1].x + spacingRight )
	parameters:
		spacingLeft: 55 * spacing + (22)
		spacingRight: 10 * spacing + serifWidth + 25
	anchors:
		0:
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], 100, true )
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
					expandedTo:
						[
							{
								x: contours[0].nodes[2].expandedTo[1].x + 235 + 250 * width
								y: capHeight - ( 55 / 750 ) * capHeight
								dirOut: 180 + 'deg'
								tensionOut: 0.3
							}
							{
								x: contours[0].nodes[2].expandedTo[1].x + 235 + 250 * width + (40)
								y: contours[0].nodes[0].expandedTo[0].y - 175
								dirIn: 108 + 'deg'
								tensionIn: 0.5
							}
						]
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.45
					expand: Object({
						width: thickness * ( 27 / 85 ) * opticThickness * contrast
						angle: - 68 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft
					y: capHeight * ( 375 / 750 )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.43
					y: - overshoot
					type: 'smooth'
					dirIn: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: thickness * ( 26 / 85 ) * opticThickness
						angle: 70 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[2].expandedTo[1].x + 340 + 250 * width
					y: 78 - (15)
					type: 'smooth'
					dirIn: - 155 + 'deg'
					expand: Object({
						width: thickness * ( 16 / 85 ) * opticThickness * contrast
						angle: 108 + 'deg'
						angle: contours[0].nodes[4].dirIn - Math.PI / 2
						distr: 0.25
					})
		1:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					# typeOut: 'line'
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 30
					y: contours[0].nodes[0].expandedTo[0].y + 50
					dirIn: - 102 + 'deg'
				2:
					x: contours[1].nodes[1].x + 15
					y: contours[1].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 20
					y: contours[0].nodes[0].expandedTo[1].y + 5
					typeOut: 'line'
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[1].x - 80
					# x: anchors[0].junctionBottom.x
					y: ( 325 / 750 ) * capHeight - serifHeight - serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.9
					})
				1:
					# x: contours[2].nodes[0].x
					# y: contours[0].nodes[3].expandedTo[0].y
					# y: 50
					# x: anchors[0].junctionBottom.x
					x: contours[2].nodes[0].x
					y: anchors[0].junctionBottom.y + thickness * ( 4 / 85 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[4].point )
						distr: 0.9
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].y
				1:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].y
				2:
					anchorLine: ( 325 / 750 ) * capHeight
					leftWidth: 35
					rightWidth: 20
					directionY: -1
