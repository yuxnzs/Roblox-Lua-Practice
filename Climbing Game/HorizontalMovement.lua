-- ����n���ʪ� Part
local movingPart = script.Parent

-- ���ʤ�V�A1 �����k�B-1 ������
local movementDirection = 1

-- Part �i���ʪ��̤p X �y��
local minXPosition = -80

-- Part �i���ʪ��̤j X �y��
local maxXPosition = -70

-- ���ʳt�סA�ƭȶV�p���ʶV��
local moveSpeed = 0.1

-- �L���`���A���򲾰�Part
while true do
	-- �ھڲ��ʤ�V�p��s�� X �y�Шç�s Part ��m
	local newX = movingPart.Position.X + (movementDirection * 1)
	movingPart.Position = Vector3.new(newX, movingPart.Position.Y, movingPart.Position.Z)

	-- ���ݤ@�p�q�ɶ��A�~�򲾰ʡ]���y�ܻ��A'moveSpeed' �V�p�A���ݮɶ��V�u�A���ʶV�֡^
	wait(moveSpeed)
	
	-- �p�G�C��̤p�y�СA�ϦV���ʦ^�h
	if movingPart.Position.X < minXPosition then
		movementDirection = 1
	end

	-- �p�G�W�L�̤j�y�СA�ϦV���ʦ^�h
	if movingPart.Position.X > maxXPosition then
		movementDirection = -1
	end
end