local RainingOnTouch = script.Parent

-- 使用 GetService 取得功能
local Debris = game:GetService("Debris")

RainingOnTouch.Touched:Connect(function(touch) -- touch 參數表示 "碰到的那個東西／人"
	-- 為了避免被非玩家觸碰，所以找到 Humanoid 才觸發
	local humanoid = touch.Parent:FindFirstChild("Humanoid")
	if humanoid then
		-- 創建新的 Part
		local part = Instance.new("Part")
		part.Parent = workspace
		-- 設置 Part 顏色
		part.BrickColor = BrickColor.new(255, 0, 0)
		-- 設置 Part 大小
		part.Size = Vector3.new(0.260, 1.360, 0.360)
		-- 若碰到 Part，玩家會被扣血
		part.Touched:Connect(function(touch)
			local humanoid = touch.Parent:FindFirstChild("Humanoid")

			if humanoid then
				humanoid:TakeDamage(1)
			end
		end)

		-- 設置隨機數字
		local randomX = math.random(-300,300)
		local randomY = math.random(-300,300)
		-- 將設置的隨機數字放於 part 被產生的位置
		part.Position = Vector3.new(randomX, 100, randomY)

		-- 將 Part 添加到 Debris 在 10 秒後自動清除。Debris:AddItem(要刪除的物件, 時間秒數)
		Debris:AddItem(part, 10)
	end
end)