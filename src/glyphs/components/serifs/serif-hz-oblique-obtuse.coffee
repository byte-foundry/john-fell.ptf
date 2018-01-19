exports.glyphs['serif-hz-oblique-obtuse'] =
	componentLabel: 'Serif'
	parameters:
		serifHeight:
			if serifWidth < 0.05
			then serifHeight = 5
			else
				if serifWidth >= 0.05
				then Math.max(serifHeight, 3);
				else serifHeight = serifHeight
		serifCurve:
			if serifWidth < 0.05
			then serifCurve = 0
			else serifCurve = serifCurve
	anchors:
		0:
			x: parentAnchors[0].base.x - Math.max( 0, serifArc * serifHeight )
			y: parentAnchors[0].base.y
		1:
			y: parentAnchors[0].base.y + Math.abs( parentAnchors[0].opposite.y - parentAnchors[0].base.y ) * 0.5 * anchors[3].scaleY
		2:
			x: parentAnchors[0].obliqueEndPoint.x
			y: parentAnchors[0].obliqueEndPoint.y
		3:
			scaleY: parentAnchors[0].scaleY || 1
	tags: [
		'component'
	]
	contours:
		0:
			exportReversed: parentAnchors[0].reversed == true
			closed: true
			nodes:
				0:
					y: Utils.onLine({
						x: anchors[0].x + serifHeight + serifCurve
						on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
					})
					x: anchors[0].x + serifHeight + serifCurve
					dirOut: Utils.lineAngle( {x: anchors[0].x, y:anchors[0].y}, {x: anchors[2].x, y:anchors[2].y} )
					tensionOut: serifRoundness
				1:
					y: Utils.onLine({
						x: anchors[0].x + serifHeight
						on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
					}) - Math.abs(Math.max(
						( contours[0].nodes[2].y - Utils.onLine({
							x: anchors[0].x + serifHeight
							on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
						}) ) * 0.85 * anchors[3].scaleY,
						- Math.abs( contours[0].nodes[0].x - ( anchors[0].x + serifHeight ) )
					)) * anchors[3].scaleY
					x: anchors[0].x + serifHeight + ( ( contours[0].nodes[1].y - Utils.onLine({
						x: anchors[0].x + serifHeight
						on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
					}) ) / ( contours[0].nodes[2].y - Utils.onLine({
						x: anchors[0].x + serifHeight
						on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
					}) ) ) * (serifMedian - 1) * serifHeight
					dirIn: Utils.lineAngle( {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y} )
					typeOut: 'line'
					tensionIn: serifRoundness
				2:
					y: anchors[0].y - serifWidth * anchors[3].scaleY + Math.abs(anchors[0].y - Utils.onLine({
						x: anchors[0].x + serifHeight * serifMedian
						on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
					})) * anchors[3].scaleY
					x: anchors[0].x + serifHeight * serifMedian
					typeIn: 'line'
					dirOut: Math.PI / 2
					tensionOut: serifTerminalCurve
				3:
					x: contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 - anchors[0].x ) / (serifWidth || 0.01) * anchors[3].scaleY ) * ( serifMedian - 1 ) )
					y: contours[0].nodes[4].y + ( contours[0].nodes[2].y - contours[0].nodes[4].y ) * 0.5 * ( 1 - ( ( contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) * 0.5 - anchors[0].x ) / (serifWidth || 0.01) * anchors[3].scaleY ) * ( serifMedian - 1 ) ) - serifTerminal * anchors[3].scaleY * serifHeight
					dirOut: Utils.lineAngle( {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y}, {x: contours[0].nodes[4].x, y: contours[0].nodes[4].y} )
					typeIn: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					y: Math.min(
						(anchors[0].y - serifWidth * anchors[3].scaleY + Math.abs(anchors[0].y - Utils.onLine({
							x: anchors[0].x + serifHeight * serifMedian
							on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
						})) * anchors[3].scaleY) * anchors[3].scaleY,
						Utils.onLine({
							x: anchors[0].x
							on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
						}) * anchors[3].scaleY
					) * anchors[3].scaleY
					x: anchors[0].x
					dirIn: Math.PI / 2
					tensionIn: serifTerminalCurve
					dirOut: Math.PI / 2
				5:
					y: anchors[1].y
					x: anchors[0].x + serifArc * serifHeight
					typeIn: Math.PI / 2
					typeOut: 'line'
				6:
					y: Utils.onLine({
						x: anchors[0].x + serifHeight + serifCurve
						on: [ parentAnchors[0].base, parentAnchors[0].obliqueEndPoint ]
					}) + Math.abs( parentAnchors[0].opposite.y - parentAnchors[0].base.y ) * 0.5 * anchors[3].scaleY
					x: contours[0].nodes[0].x
					typeOut: 'line'
					typeIn: 'line'
