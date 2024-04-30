local clickDetector = script.Parent.ClickDetector
local targetPart = script.Parent.Parent.ChangedPart

-- 當按下時更改 targetPart 的位置
clickDetector.MouseClick:Connect(function()
	targetPart.Position = Vector3.new(100, 0.5, -22)
end)
