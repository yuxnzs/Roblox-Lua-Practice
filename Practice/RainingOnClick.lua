local RainingOnClick = script.Parent.ClickDetector

-- �ϥ� GetService ���o�\��
local Debris = game:GetService("Debris")

RainingOnClick.MouseClick:Connect(function()
	for partCount = 1, 600 do
		-- �Ыطs�� Part
		local part = Instance.new("Part")
		part.Parent = workspace
		-- �]�m Part �C��
		part.BrickColor = BrickColor.new(255, 0, 0)
		-- �]�m Part �j�p
		part.Size = Vector3.new(0.260, 1.360, 0.360)
		-- �Y�I�� Part�A���a�|�Q����
		part.Touched:Connect(function(touch)
			local humanoid = touch.Parent:FindFirstChild("Humanoid")

			if humanoid then
				humanoid:TakeDamage(1)
			end
		end)
		
		-- �]�m�H���Ʀr
		local randomX = math.random(-300,300)
		local randomY = math.random(-300,300)
		-- �N�]�m���H���Ʀr��� part �Q���ͪ���m
		part.Position = Vector3.new(randomX, 100, randomY)
		
		-- �N Part �K�[�� Debris �b 10 ���۰ʲM���CDebris:AddItem(�n�R��������, �ɶ����)
		Debris:AddItem(part, 10)
		
		-- �� part ���|�@�������@�_���U��
		--task.wait()
	end
end)