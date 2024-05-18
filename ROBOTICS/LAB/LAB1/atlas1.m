atlas = loadrobot("atlas")
show(atlas);

% Generating joint configurations
for i=1:4
    subplot(2,2,i);
    config = randomConfiguration(atlas);
    show(atlas,config)
end
    % inteRACTING WITH ROBOT MODEL
    interactiveGUI = interactiveRigidBodyTree(atlas);
    % Saving the joint Configurations
    interactiveGUIConfiguration = randomConfiguration(atlas);
    addConfiguration(interactiveGUI); 
    disp(interactiveGUI.storedConfiguration);