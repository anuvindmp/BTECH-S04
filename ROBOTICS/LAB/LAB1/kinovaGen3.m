gen3 = loadrobot("kinovaGen3","DataFormat","column");
disp(gen3);
show(gen3);

%Generating joint configurations
for i=1:4
    subplot(2,2,i);
    config = randomConfiguration(gen3);
    show(gen3,config)
end
    % inteRACTING WITH ROBOT MODEL
    interactiveGUI = interactiveRigidBodyTree(gen3);
    % Saving the joint Configurations
    interactiveGUIConfiguration = randomConfiguration(gen3);
    addConfiguration(interactiveGUI);
    disp(interactiveGUI.storedConfiguration);