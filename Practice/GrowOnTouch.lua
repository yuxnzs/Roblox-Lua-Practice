local SizePart = script.Parent
SizePart.Anchored = true

SizePart.TouchEnded:Connect(function(touch)
	local humanoid = touch.Parent:FindFirstChild("Humanoid")

	if humanoid then
		SizePart.Size = Vector3.new(SizePart.Size.X + 0.1, SizePart.Size.Y + 0.1, SizePart.Size.Z + 0.1)
	end

end)
