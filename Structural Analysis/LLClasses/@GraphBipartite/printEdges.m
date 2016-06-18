function [ s ] = printEdges( gh, ids, printSExp )
%PRINTEDGES Summary of this function goes here
%   Detailed explanation goes here

if nargin < 3
    printExp = false;
end

edgeIndices = gh.getIndexById(ids);

s = [];
for i=edgeIndices
    equInd = gh.getIndexById(gh.edges(i).equId);
    varInd = gh.getIndexById(gh.edges(i).varId);
    s = [s sprintf('%s -> %s',gh.equationAliasArray{equInd},gh.variableAliasArray{varInd})];
    if printSExp s = [s sprintf(' (%s)', gh.equations(equInd).expressionStructural)]; end
    s = [s sprintf('\n')];
end

disp(s)

end

