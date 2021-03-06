function test_suite=test_fac
% initialize unit tests
    try
        test_functions=localfunctions();
    catch
    end
    initTestSuite;

%%%%%%%%%%%%%%%%%%%%%%%
%     Basic tests     %
%%%%%%%%%%%%%%%%%%%%%%%

function test_fac_0
% test if fac(0)==1
    assertEqual(fac(0),1);

function test_fac_1
% test if fac(1)==1
    assertEqual(fac(1),1);

function test_fac_5
% test if fac(5)==120
    assertEqual(fac(5),120);

%%%%%%%%%%%%%%%%%%%%%%%
% More advanced tests %
%%%%%%%%%%%%%%%%%%%%%%%

function test_fac_exception_negative
% test if exceptions are thrown for negative values
    assertExceptionThrown(@()fac(-1));

function test_fac_exception_noninteger
% test if exceptions are thrown for noninteger values
    assertExceptionThrown(@()fac(1.5),'*');
