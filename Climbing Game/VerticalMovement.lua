-- ����n���ʪ� Part
local movingPart = script.Parent

-- ���ʤ�V�A1 �����W�B-1 �����U
local movementDirection = 1

-- Part �i���ʪ��̤p Y �y��
local minYPosition = 30

-- Part �i���ʪ��̤j Y �y��
local maxYPosition = 40

-- ���ʳt�סA�ƭȶV�p���ʶV��
local moveSpeed = 0.1

-- �L���`���A���򲾰�Part
while true do
	-- �ھڲ��ʤ�V�p��s�� Y �y�Шç�s Part ��m
	local newY = movingPart.Position.Y + (movementDirection * 1)
	movingPart.Position = Vector3.new(movingPart.Position.X, newY, movingPart.Position.Z)
	
	-- ���ݤ@�p�q�ɶ��A�~�򲾰ʡ]���y�ܻ��A'moveSpeed' �V�p�A���ݮɶ��V�u�A���ʶV�֡^
	wait(moveSpeed)
	
	-- �p�G�C��̤p�y�СA�ϦV���ʦ^�h
	if movingPart.Position.Y < minYPosition then
		movementDirection = 1
	end

	-- �p�G�W�L�̤j�y�СA�ϦV���ʦ^�h
	if movingPart.Position.Y > maxYPosition then
		movementDirection = -1
	end
end