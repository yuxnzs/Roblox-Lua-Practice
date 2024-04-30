script.Parent.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild('Humanoid') then
		hit.Parent.HumanoidRootPart.CFrame = CFrame.new(53.343, 0.61, -45.515)
	end
end)
