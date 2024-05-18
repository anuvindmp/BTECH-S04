ur10 = loadrobot("universalUR10");
show(ur10);
%Generating joint configurations
for i=1:4
    subplot(2,2,i);
    config = randomConfiguration(ur10);
    show(ur10,config)
end
    % inteRACTING WITH ROBOT MODEL
    interactiveGUI = interactiveRigidBodyTree(ur10);
    % Saving the joint Configurations
    interactiveGUIConfiguration = randomConfiguration(ur10);
    addConfiguration(interactiveGUI);
    disp(interactiveGUI.storedConfiguration);