% This is an autogenerated sample test for file testapply_maxpool.m
classdef testapply_maxpool < matlab.unittest.TestCase

    methods (Test)

        function test_apply_maxpool(testCase)
            % Specify the input(s) of
            % apply_maxpool
            layerResults = evalin("base", "layerResults"); 
            inarray = layerResults{1,5};

            % Specify the expected output(s) of
            % apply_maxpool
            expected_outarray = layerResults{1,6};

            % Exercise the function apply_maxpool
            actual_outarray = apply_maxpool(inarray);
            disp(actual_outarray);
            testCase.verifyEqual(actual_outarray, expected_outarray);
        end
    end
end