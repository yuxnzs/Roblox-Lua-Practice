local clickDetector = script.Parent.ClickDetector
local targetPart = script.Parent.Parent.ChangedPart

-- ����U�ɧ�� targetPart ����m
clickDetector.MouseClick:Connect(function()
	targetPart.Position = Vector3.new(100, 0.5, -22)
end)
