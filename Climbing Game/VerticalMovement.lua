-- 獲取要移動的 Part
local movingPart = script.Parent

-- 移動方向，1 為往上、-1 為往下
local movementDirection = 1

-- Part 可移動的最小 Y 座標
local minYPosition = 30

-- Part 可移動的最大 Y 座標
local maxYPosition = 40

-- 移動速度，數值越小移動越快
local moveSpeed = 0.1

-- 無限循環，持續移動Part
while true do
	-- 根據移動方向計算新的 Y 座標並更新 Part 位置
	local newY = movingPart.Position.Y + (movementDirection * 1)
	movingPart.Position = Vector3.new(movingPart.Position.X, newY, movingPart.Position.Z)
	
	-- 等待一小段時間再繼續移動（換句話說，'moveSpeed' 越小，等待時間越短，移動越快）
	wait(moveSpeed)
	
	-- 如果低於最小座標，反向移動回去
	if movingPart.Position.Y < minYPosition then
		movementDirection = 1
	end

	-- 如果超過最大座標，反向移動回去
	if movingPart.Position.Y > maxYPosition then
		movementDirection = -1
	end
end