local damagePart = script.Parent

damagePart.Anchored = true

local isTouched = false

damagePart.Touched:Connect(function(touch)
	local humanoid = touch.Parent:FindFirstChild("Humanoid")
	
	if humanoid then
		if not isTouched then
			isTouched = true
			humanoid:TakeDamage(10)
			-- 避免重複觸發一直被扣血
			task.wait(2)
			isTouched = false
		end
	end
end)