local fallPart = script.Parent
fallPart.Anchored = true

fallPart.Touched:Connect(function(touch)
	-- ���F�קK�Q�D���aĲ�I�A�ҥH��� Humanoid �~Ĳ�o
	local humanoid = touch.Parent:FindFirstChild("Humanoid")
	
	if humanoid then
		fallPart.Anchored = false
	end
	
	-- �����ɶ�
	task.wait(2)
	
	-- ���m�^�쥻��m
	fallPart.Position = Vector3.new(-280, 13, -7)
	fallPart.Anchored = true
end)