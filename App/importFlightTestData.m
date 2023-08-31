function testFlightTestData = importFlightTestData(filename, dataLines)
%IMPORTFILE Import data from a text file
%  TESTFLIGHTTESTDATA = IMPORTFILE(FILENAME) reads data from text file
%  FILENAME for the default selection.  Returns the data as a table.
%
%  TESTFLIGHTTESTDATA = IMPORTFILE(FILE, DATALINES) reads data for the
%  specified row interval(s) of text file FILENAME. Specify DATALINES as
%  a positive scalar integer or a N-by-2 array of positive scalar
%  integers for dis-contiguous row intervals.
%
%  Example:
%  testFlightTestData = importfile("C:\Users\tkyung\MATLAB Drive\Data-Analysis-Quadcopter-RTX\Data\testFlightTestData.csv", [8, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 30-May-2023 09:57:11

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [8, Inf];
end

%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 17);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["time", "modeNumber", "acc1", "acc2", "acc3", "angRate1", "angRate2", "angRate3", "batteryVolts", "motorCmds1", "motorCmds2", "motorCmds3", "motorCmds4", "pos1", "pos2", "pos3", "isBallFlag"];
opts.VariableTypes = ["string", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, "time", "WhitespaceRule", "preserve");
opts = setvaropts(opts, "time", "EmptyFieldRule", "auto");

% Import the data
testFlightTestData = readtable(filename, opts);
testFlightTestData.Properties.VariableNames = {'time','modeNumber','accX_body','accY_body','accZ_body','p','q','r','batteryVolts','motorCmds1','motorCmds2','motorCmds3','motorCmds4','pos1','pos2','pos3','isBallFlag'};
testFlightTestData.Properties.VariableUnits = {'YYYY::DDD:HH:MM:SS.FF','mode number','m/s^2','m/s^2','m/s^2','deg/s','deg/s','deg/s','volts','rpm','rpm','rpm','rpm', 'meters', 'meters', 'meters', 'isBall'};
end