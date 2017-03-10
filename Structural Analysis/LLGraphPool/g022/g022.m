classdef g022 < model
    % Dustegor et.al 2006
%  benchmark valve model from the paper
%    Dustegor, D., Frisk, E., Cocquempot, V., Krysander, M., and 
%    Staroswiecki, M., "Structural analysis of fault isolability in the
%    DAMADICS benchmark", Control Engineering Practice, 14(6), 597-608,
%    2006
    methods
        function this = g022()
            this.name = 'g022';
            this.description = 'benchmark valve model from the paper Dustegor, D., Frisk, E., Cocquempot, V., Krysander, M., and Staroswiecki, M., "Structural analysis of fault isolability in the DAMADICS benchmark", Control Engineering Practice, 14(6), 597-608, 2006';
            
            con = [...
                {'fault Ps ddot_x dot_x Fvc'};...
                {'fault xh x'};...
                {'fault Qv xh DeltaP'};...
                {'DeltaP-a xh P1 Pv'};...
                {'Pv T1'};...
                {'DeltaP P1 P2 DeltaP-a'};...
                {'Fvc P1 xh P2 DeltaP-a Pv'};...
                {'fault Qv3 x3 P1 P2'};...
                {'Qc Ps dot_Ps xh dot_xh'};...
                {'fault Qc Ps CVI Pz'};...
                {'Q Qv Qv3'};...
                {'fault CVI msr Cv Yx'};... % e19
                {'fault T1'};... % e18
                ];
            
            der = [...
                {'int dot_x dot x'};...
                {'int ddot_x dot dot_x'};...
                {'int dot_Ps dot Ps'};...
                {'int dot_xh dot xh'};...
                ];
            
            msr = [...
                {'fault msr Yx xh'};...
                {'fault msr YQ Q'};...
                {'msr YP1 P1'};...
                {'msr YP2 P2'};...
                {'msr YT T1'};...
                {'fault msr YPs Ps'};....
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