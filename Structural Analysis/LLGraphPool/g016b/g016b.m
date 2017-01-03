classdef g016b < model
    
    methods
        function this = g016b()
            this.name = 'g016b';
            this.description = 'Minimal model to test realizable matching of MTESs. No valid matching should be found';
            
            %% legend:
            % dot - differential relation
            % int - integral term
            % trig - trigonometric term
            % ni - general non-invertible term
            % inp - input variable
            % out - output variable % NOT SUPPORTED
            % msr - measured variable
            
            %% Equations
            
            % Position derivatives
            equ = [...
                {'fault x1 ni x2'};...
                {'fault x2 x3'};...
                {'fault x3 dot_x1'};...
                {'fault ni x3'};...
                ];
            
            der = [...
                {'int dot_x1 dot x1'};...
                ];
            
            %% Summing up
            this.constraints = [...
                {equ},{'f'};...
                {der},{'d'};...
                ];
            
            %% Specifying node coordinates if available
            this.coordinates = [];
            
        end
        
    end
    
end