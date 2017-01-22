classdef g010 < model
    %% Linearized longitudinal airplane model
    % Found in
    % R. Beard Book, p.85
    methods
        function this = g010()
            this.name = 'g010';
            this.description = 'Linearized longitudinal airplane model found in R. Beard book, p.85';
            
            con = [...
                {'fault u_dot u w q theta inp deltae inp deltat'};...
                {'fault w_dot u w q ni theta inp deltae'};...
                {'fault q_dot u w q theta inp deltae'};...
                {'theta_dot q'};...
                {'h_dot ni u w theta'};...
                {'h_gr h e'};...
                ];
            
            der = [...
                {'int u_dot dot u'};...
                {'int w_dot dot w'};...
                {'int q_dot dot q'};...
                {'int theta_dot dot theta'};...
                {'int h_dot dot h'};...
                ];
            
            msr = [...
                {'fault msr y1 q'};...
                {'fault msr y2 theta'};...
                ];
            
            this.constraints = [...
                {con},{'c'};...
                {der},{'d'};...
                {msr},{'s'};...
                ];
            
            this.coordinates = [];
            
        end
        
    end
    
end