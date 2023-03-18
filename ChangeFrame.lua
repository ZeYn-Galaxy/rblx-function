local currentPanel = nil -- global variable

function changePanel(frame)
    
    if currentPanel == frame then
        currentPanel:TweenPosition(UDim2.new(2, 0, 0.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, .5)
        task.wait(.5)
        currentPanel.Visible = false
        currentPanel = nil
        return
    end
    
    if currentPanel ~= nil then
        currentPanel.Visible = false
    end
    
    currentPanel = frame
    currentPanel.Position = UDim2.new(2, 0, 0.5, 0)
    currentPanel.Visible = true
    currentPanel:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, .5)
    task.wait(.5)
    
end
