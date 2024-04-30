local fallPart = script.Parent
fallPart.Anchored = true

fallPart.Touched:Connect(function(touch)
	-- 為了避免被非玩家觸碰，所以找到 Humanoid 才觸發
	local humanoid = touch.Parent:FindFirstChild("Humanoid")
	
	if humanoid then
		fallPart.Anchored = false
	end
	
	-- 掉落時間
	task.wait(2)
	
	-- 重置回原本位置
	fallPart.Position = Vector3.new(-280, 13, -7)
	fallPart.Anchored = true
end)