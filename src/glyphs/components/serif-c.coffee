exports.glyphs['serif-c'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
		2:
			baseRight: if typeof parentAnchors[2].baseRight != 'undefined' then parentAnchors[2].baseRight else { x: parentAnchors[0].x, y: parentAnchors[0].y }
			baseLeft: if typeof parentAnchors[2].baseLeft != 'undefined' then parentAnchors[2].baseLeft else { x: parentAnchors[1].x, y: parentAnchors[1].y }
			leftWidth: parentAnchors[2].leftWidth * Math.min( serifWidth / 65, 1 ) || 0
			rightWidth: parentAnchors[2].rightWidth * Math.min( serifWidth / 65, 1 ) || 0
			angleTop: parentAnchors[2].angleTop || 45 + 'deg'
			angleBottom: parentAnchors[2].angleBottom || 45 + 'deg'
			maxWidthBottom: if typeof parentAnchors[2].maxWidthBottom != 'undefined' then parentAnchors[2].maxWidthBottom else false
	tags: [
		'component'
	]
	contours:
		0:
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: anchors[2].angleBottom
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					dirIn: 90 * serifMedian + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[5].x - serifHeight * serifMedian
					y: contours[0].nodes[4].y
					dirOut: 90 * serifMedian + 'deg'
				3:
					x: contours[0].nodes[2].x + ( contours[0].nodes[5].x - contours[0].nodes[2].x ) / 2
					y: contours[0].nodes[4].y + serifTerminal * serifWidth
					dirOut: 0 + 'deg'
					type: 'smooth'
				4:
					x: Math.max( anchors[2].baseRight.x, anchors[2].baseLeft.x )
					y: anchors[2].baseRight.y + serifWidth + anchors[2].rightWidth
					dirIn: 90 + 'deg'
				5:
					x: Math.max( anchors[2].baseRight.x, anchors[2].baseLeft.x )
					y: Math.max( anchors[2].baseRight.y, anchors[2].baseLeft.y )
				6:
					x: Math.max( anchors[2].baseRight.x, anchors[2].baseLeft.x )
					y:
						if maxWidthBottom
						then anchors[2].baseLeft.y - serifWidth - anchors[2].leftWidth
						else Math.max( anchors[2].maxWidthBottom, anchors[2].baseLeft.y - serifWidth - anchors[2].leftWidth )
				7:
					x: contours[0].nodes[8].x + ( contours[0].nodes[5].x - contours[0].nodes[8].x ) / 2
					y: contours[0].nodes[6].y
				8:
					x: contours[0].nodes[5].x - serifHeight
					y: contours[0].nodes[6].y
				9:
					x: contours[0].nodes[8].x
					y: contours[0].nodes[8].y
					dirOut: 90 + 'deg'
				10:
					x: anchors[1].x
					y: anchors[1].y
					dirIn: anchors[2].angleTop
					typeOut: 'line'
