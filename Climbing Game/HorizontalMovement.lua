-- 獲取要移動的 Part
local movingPart = script.Parent

-- 移動方向，1 為往右、-1 為往左
local movementDirection = 1

-- Part 可移動的最小 X 座標
local minXPosition = -80

-- Part 可移動的最大 X 座標
local maxXPosition = -70

-- 移動速度，數值越小移動越快
local moveSpeed = 0.1

-- 無限循環，持續移動 Part
while true do
	-- 根據移動方向計算新的 X 座標並更新 Part 位置
	local newX = movingPart.Position.X + (movementDirection * 1)
	movingPart.Position = Vector3.new(newX, movingPart.Position.Y, movingPart.Position.Z)

	-- 等待一小段時間再繼續移動（換句話說，'moveSpeed' 越小，等待時間越短，移動越快）
	wait(moveSpeed)
	
	-- 如果低於最小座標，反向移動回去
	if movingPart.Position.X < minXPosition then
		movementDirection = 1
	end

	-- 如果超過最大座標，反向移動回去
	if movingPart.Position.X > maxXPosition then
		movementDirection = -1
	end
end
