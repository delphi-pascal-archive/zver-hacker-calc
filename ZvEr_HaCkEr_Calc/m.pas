{*******************************************************}
{                                                       }
{                 Калькулятор            }
{                                                       }
{             Copyright(c) DR.WIN32 }
{                                                       }
{     }
{                                                       }
{*******************************************************}

unit M;



{$N+,S-}

interface

uses SysUtils, Types;


(*$HPPEMIT '#pragma option -w-8071'*)


const   

(*$HPPEMIT 'namespace Math {'*)

  MinSingle   =  1.5e-45;
  (*$EXTERNALSYM MinSingle*)
  (*$HPPEMIT 'extern const Extended MinSingle /*= 1.500000E-45*/;'*)
  MaxSingle   =  3.4e+38;
  (*$EXTERNALSYM MaxSingle*)
  (*$HPPEMIT 'extern const Extended MaxSingle /*= 3.400000E+38*/;'*)
  MinDouble   =  5.0e-324;
  (*$EXTERNALSYM MinDouble*)
  (*$HPPEMIT 'extern const Extended MinDouble /*= 5.000000E-324*/;'*)
  MaxDouble   =  1.7e+308;
  (*$EXTERNALSYM MaxDouble*)
  (*$HPPEMIT 'extern const Extended MaxDouble /*= 1.700000E+308*/;'*)
  MinExtended =  3.4e-4932;
  (*$EXTERNALSYM MinExtended*)
  (*$HPPEMIT 'extern const Extended MinExtended /*= 3.400000E-4932*/;'*)
  MaxExtended =  1.1e+4932;
  (*$EXTERNALSYM MaxExtended*)
  (*$HPPEMIT 'extern const Extended MaxExtended /*= 1.100000E+4932*/;'*)
  MinComp     = -9.223372036854775807e+18;
  (*$EXTERNALSYM MinComp*)
  (*$HPPEMIT 'extern const Extended MinComp /*= -9.223372E+18*/;'*)
  MaxComp     =  9.223372036854775807e+18;
  (*$EXTERNALSYM MaxComp*)
  (*$HPPEMIT 'extern const Extended MaxComp /*= 9.223372E+18*/;'*)

  
  NaN         =  0.0 / 0.0;
  (*$EXTERNALSYM NaN*)
  (*$HPPEMIT 'extern const Extended NaN /*= 0.0 / 0.0*/;'*)
  Infinity    =  1.0 / 0.0;
  (*$EXTERNALSYM Infinity*)
  (*$HPPEMIT 'extern const Extended Infinity /*= 1.0 / 0.0*/;'*)
  NegInfinity = -1.0 / 0.0;
  (*$EXTERNALSYM NegInfinity*)
  (*$HPPEMIT 'extern const Extended NegInfinity /*= -1.0 / 0.0*/;'*)

(*$HPPEMIT '} // namespace Math '*)

function ArcCos(const X : Extended) : Extended; overload;
function ArcCos(const X : Double) : Double; overload;
function ArcCos(const X : Single) : Single; overload;
function ArcSin(const X : Extended) : Extended; overload;
function ArcSin(const X : Double) : Double; overload;
function ArcSin(const X : Single) : Single; overload;


function ArcTan2(const Y, X: Extended): Extended;


procedure SinCos(const Theta: Extended; var Sin, Cos: Extended) register;
function Tan(const X: Extended): Extended;
function Cotan(const X: Extended): Extended;           
function Secant(const X: Extended): Extended;         
function Cosecant(const X: Extended): Extended;       
function Hypot(const X, Y: Extended): Extended;        {

{ Angle unit conversion routines }
function RadToDeg(const Radians: Extended): Extended; inline; 
function RadToGrad(const Radians: Extended): Extended; inline;  
function RadToCycle(const Radians: Extended): Extended; inline; 

function DegToRad(const Degrees: Extended): Extended; inline;   
function DegToGrad(const Degrees: Extended): Extended;
function DegToCycle(const Degrees: Extended): Extended;

function GradToRad(const Grads: Extended): Extended; inline;   
function GradToDeg(const Grads: Extended): Extended;
function GradToCycle(const Grads: Extended): Extended;

function CycleToRad(const Cycles: Extended): Extended; inline; 
function CycleToDeg(const Cycles: Extended): Extended;
function CycleToGrad(const Cycles: Extended): Extended;
function Cot(const X: Extended): Extended; inline;     
function Sec(const X: Extended): Extended; inline;    
function Csc(const X: Extended): Extended; inline;     
function Cosh(const X: Extended): Extended;
function Sinh(const X: Extended): Extended;
function Tanh(const X: Extended): Extended;
function CotH(const X: Extended): Extended; inline;
function SecH(const X: Extended): Extended; inline;
function CscH(const X: Extended): Extended; inline;
function ArcCot(const X: Extended): Extended;         
function ArcSec(const X: Extended): Extended;         
function ArcCsc(const X: Extended): Extended;          
function ArcCosh(const X: Extended): Extended;      
function ArcSinh(const X: Extended): Extended;
function ArcTanh(const X: Extended): Extended;        
function ArcCotH(const X: Extended): Extended;        
function ArcSecH(const X: Extended): Extended;         
function ArcCscH(const X: Extended): Extended;         

function LnXP1(const X: Extended): Extended; 
function Log10(const X: Extended): Extended;                    
function Log2(const X: Extended): Extended;                      
function LogN(const Base, X: Extended): Extended;                


function IntPower(const Base: Extended; const Exponent: Integer): Extended register;

function Power(const Base, Exponent: Extended): Extended; overload;
function Power(const Base, Exponent: Double): Double; overload;
function Power(const Base, Exponent: Single): Single; overload;

procedure Frexp(const X: Extended; var Mantissa: Extended; var Exponent: Integer) register;

function Ldexp(const X: Extended; const P: Integer): Extended register;

function Ceil(const X: Extended):Integer;

function Floor(const X: Extended): Integer;

function Poly(const X: Extended; const Coefficients: array of Double): Extended;

function Mean(const Data: array of Double): Extended;

function Sum(const Data: array of Double): Extended register;
function SumInt(const Data: array of Integer): Integer register;
function SumOfSquares(const Data: array of Double): Extended;
procedure SumsAndSquares(const Data: array of Double;
  var Sum, SumOfSquares: Extended) register;

function MinValue(const Data: array of Double): Double;
function MinIntValue(const Data: array of Integer): Integer;

function Min(const A, B: Integer): Integer; overload; inline;
function Min(const A, B: Int64): Int64; overload; inline;
function Min(const A, B: Single): Single; overload; inline;
function Min(const A, B: Double): Double; overload; inline;
function Min(const A, B: Extended): Extended; overload; inline;

function MaxValue(const Data: array of Double): Double;
function MaxIntValue(const Data: array of Integer): Integer;

function Max(const A, B: Integer): Integer; overload; inline;
function Max(const A, B: Int64): Int64; overload; inline;
function Max(const A, B: Single): Single; overload; inline;
function Max(const A, B: Double): Double; overload; inline;
function Max(const A, B: Extended): Extended; overload; inline;

function StdDev(const Data: array of Double): Extended;

procedure MeanAndStdDev(const Data: array of Double; var Mean, StdDev: Extended);

function PopnStdDev(const Data: array of Double): Extended;

function Variance(const Data: array of Double): Extended;

function PopnVariance(const Data: array of Double): Extended;

function TotalVariance(const Data: array of Double): Extended;

function Norm(const Data: array of Double): Extended;

procedure MomentSkewKurtosis(const Data: array of Double;
  var M1, M2, M3, M4, Skew, Kurtosis: Extended);

function RandG(Mean, StdDev: Extended): Extended;



function IsNan(const AValue: Double): Boolean; overload;
function IsNan(const AValue: Single): Boolean; overload;
function IsNan(const AValue: Extended): Boolean; overload;

function IsInfinite(const AValue: Double): Boolean;


type
  TValueSign = -1..1;

const
  NegativeValue = Low(TValueSign);
  ZeroValue = 0;
  PositiveValue = High(TValueSign);

function Sign(const AValue: Integer): TValueSign; overload;
function Sign(const AValue: Int64): TValueSign; overload;
function Sign(const AValue: Double): TValueSign; overload;

function CompareValue(const A, B: Extended; Epsilon: Extended = 0): TValueRelationship; overload;
function CompareValue(const A, B: Double; Epsilon: Double = 0): TValueRelationship; overload;
function CompareValue(const A, B: Single; Epsilon: Single = 0): TValueRelationship; overload;
function CompareValue(const A, B: Integer): TValueRelationship; overload;
function CompareValue(const A, B: Int64): TValueRelationship; overload;

function SameValue(const A, B: Extended; Epsilon: Extended = 0): Boolean; overload;
function SameValue(const A, B: Double; Epsilon: Double = 0): Boolean; overload;
function SameValue(const A, B: Single; Epsilon: Single = 0): Boolean; overload;

function IsZero(const A: Extended; Epsilon: Extended = 0): Boolean; overload;
function IsZero(const A: Double; Epsilon: Double = 0): Boolean; overload;
function IsZero(const A: Single; Epsilon: Single = 0): Boolean; overload;


function IfThen(AValue: Boolean; const ATrue: Integer; const AFalse: Integer = 0): Integer; overload;
function IfThen(AValue: Boolean; const ATrue: Int64; const AFalse: Int64 = 0): Int64; overload;
function IfThen(AValue: Boolean; const ATrue: Double; const AFalse: Double = 0.0): Double; overload;


function RandomRange(const AFrom, ATo: Integer): Integer;
function RandomFrom(const AValues: array of Integer): Integer; overload;
function RandomFrom(const AValues: array of Int64): Int64; overload;
function RandomFrom(const AValues: array of Double): Double; overload;


function InRange(const AValue, AMin, AMax: Integer): Boolean; overload; inline;
function InRange(const AValue, AMin, AMax: Int64): Boolean; overload; inline;
function InRange(const AValue, AMin, AMax: Double): Boolean; overload; inline;


function EnsureRange(const AValue, AMin, AMax: Integer): Integer; overload;
function EnsureRange(const AValue, AMin, AMax: Int64): Int64; overload;
function EnsureRange(const AValue, AMin, AMax: Double): Double; overload;

procedure DivMod(Dividend: Cardinal; Divisor: Word;
  var Result, Remainder: Word);


type
  TRoundToRange = -37..37;

type
 TRoundToEXRangeExtended = -20..20;

function RoundTo(const AValue: Extended;
                 const ADigit: TRoundToEXRangeExtended): Extended;

function SimpleRoundTo(const AValue: Extended; const ADigit: TRoundToRange = -2): Extended;



type
  TPaymentTime = (ptEndOfPeriod, ptStartOfPeriod);

function DoubleDecliningBalance(const Cost, Salvage: Extended;
  Life, Period: Integer): Extended;

function FutureValue(const Rate: Extended; NPeriods: Integer; const Payment,
  PresentValue: Extended; PaymentTime: TPaymentTime): Extended;

function InterestPayment(const Rate: Extended; Period, NPeriods: Integer;
  const PresentValue, FutureValue: Extended; PaymentTime: TPaymentTime): Extended;

function InterestRate(NPeriods: Integer; const Payment, PresentValue,
  FutureValue: Extended; PaymentTime: TPaymentTime): Extended;

function InternalRateOfReturn(const Guess: Extended;
  const CashFlows: array of Double): Extended;

function NumberOfPeriods(const Rate: Extended; Payment: Extended;
  const PresentValue, FutureValue: Extended; PaymentTime: TPaymentTime): Extended;

function NetPresentValue(const Rate: Extended; const CashFlows: array of Double;
  PaymentTime: TPaymentTime): Extended;


function Payment(Rate: Extended; NPeriods: Integer; const PresentValue,
  FutureValue: Extended; PaymentTime: TPaymentTime): Extended;


function PeriodPayment(const Rate: Extended; Period, NPeriods: Integer;
  const PresentValue, FutureValue: Extended; PaymentTime: TPaymentTime): Extended;


function PresentValue(const Rate: Extended; NPeriods: Integer;
  const Payment, FutureValue: Extended; PaymentTime: TPaymentTime): Extended;


function SLNDepreciation(const Cost, Salvage: Extended; Life: Integer): Extended;


function SYDDepreciation(const Cost, Salvage: Extended; Life, Period: Integer): Extended;

type
  EInvalidArgument = class(EMathError) end;



type
  TFPURoundingMode = (rmNearest, rmDown, rmUp, rmTruncate);

function GetRoundMode: TFPURoundingMode;

function SetRoundMode(const RoundMode: TFPURoundingMode): TFPURoundingMode;

type
  TFPUPrecisionMode = (pmSingle, pmReserved, pmDouble, pmExtended);

function GetPrecisionMode: TFPUPrecisionMode;

function SetPrecisionMode(const Precision: TFPUPrecisionMode): TFPUPrecisionMode;

type
  TFPUException = (exInvalidOp, exDenormalized, exZeroDivide,
                   exOverflow, exUnderflow, exPrecision);
  TFPUExceptionMask = set of TFPUException;

function GetExceptionMask: TFPUExceptionMask;

function SetExceptionMask(const Mask: TFPUExceptionMask): TFPUExceptionMask;

procedure ClearExceptions(RaisePending: Boolean = True);

implementation

uses SysConst;

procedure DivMod(Dividend: Cardinal; Divisor: Word;
  var Result, Remainder: Word);
asm
        PUSH    EBX
        MOV     EBX,EDX
        MOV     EDX,EAX
        SHR     EDX,16
        DIV     BX
        MOV     EBX,Remainder
        MOV     [ECX],AX
        MOV     [EBX],DX
        POP     EBX
end;

procedure RoundExError;
begin
  raise Exception.Create(SVarInvalid);
end;



function RoundTo(const AValue: Extended;
                 const ADigit: TRoundToEXRangeExtended): Extended;
type
  TFactors = array[1..2] of Extended;
const
  CW8087X : Word = 4978;
  LFactorArray : array[-20..20] of TFactors = (
    (1E-20, 1E20), (1E-19, 1E19), (1E-18, 1E18), (1E-17, 1E17), (1E-16, 1E16),
    (1E-15, 1E15), (1E-14, 1E14), (1E-13, 1E13), (1E-12, 1E12), (1E-11, 1E11),
    (1E-10, 1E10), (1E-09, 1E09), (1E-08, 1E08), (1E-07, 1E07), (1E-06, 1E06),
    (1E-05, 1E05), (1E-04, 1E04), (1E-03, 1E03), (1E-02, 1E02), (1E-01, 1E01),
    (1, 1),
    (1E01, 1E-01), (1E02, 1E-02), (1E03, 1E-03), (1E04, 1E-04), (1E05, 1E-05),
    (1E06, 1E-06), (1E07, 1E-07), (1E08, 1E-08), (1E09, 1E-09), (1E10, 1E-10),
    (1E11, 1E-11), (1E12, 1E-12), (1E13, 1E-13), (1E14, 1E-14), (1E15, 1E-15),
    (1E16, 1E-16), (1E17, 1E-17), (1E18, 1E-18), (1E19, 1E-19), (1E20, 1E-20));
asm
  movsx   eax,al
  cmp     eax, 20
  jg      RoundExError
  cmp     eax, -20
  jl      RoundExError
  sub     esp, 4
  fstcw   word ptr [esp]
  fldcw   word ptr [CW8087X]
  lea     eax, [eax+eax*4]
  lea     eax, [eax*4 + LFactorArray + 20*20]
  fld     tbyte ptr [eax]
  fld     tbyte ptr [eax+10]
  fld     AValue
  fmulp
  frndint
  fmulp
  fldcw   word ptr [esp]
  wait
  pop     eax 
end;
function SimpleRoundTo(const AValue: Extended; const ADigit: TRoundToRange = -2): Extended;
var
  LFactor: Extended;
begin
  LFactor := IntPower(10, ADigit);
  if AValue < 0 then
    Result := Trunc((AValue / LFactor) - 0.5) * LFactor
  else
    Result := Trunc((AValue / LFactor) + 0.5) * LFactor;
end;
function Annuity2(const R: Extended; N: Integer; PaymentTime: TPaymentTime;
  var CompoundRN: Extended): Extended; Forward;
function Compound(const R: Extended; N: Integer): Extended; Forward;
function RelSmall(const X, Y: Extended): Boolean; Forward;
type
  TPoly = record
    Neg, Pos, DNeg, DPos: Extended
  end;
const
  MaxIterations = 15;
procedure ArgError(const Msg: string);
begin
  raise EInvalidArgument.Create(Msg);
end;
function DegToRad(const Degrees: Extended): Extended;  
begin
  Result := Degrees * (PI / 180);
end;
function RadToDeg(const Radians: Extended): Extended;  
begin
  Result := Radians * (180 / PI);
end;
function GradToRad(const Grads: Extended): Extended;  
begin
  Result := Grads * (PI / 200);
end;
function RadToGrad(const Radians: Extended): Extended; 
begin
  Result := Radians * (200 / PI);
end;
function CycleToRad(const Cycles: Extended): Extended; 
begin
  Result := Cycles * (2 * PI);
end;
function RadToCycle(const Radians: Extended): Extended;
begin
  Result := Radians / (2 * PI);
end;
function DegToGrad(const Degrees: Extended): Extended;
begin
  Result := RadToGrad(DegToRad(Degrees));
end;
function DegToCycle(const Degrees: Extended): Extended;
begin
  Result := RadToCycle(DegToRad(Degrees));
end;
function GradToDeg(const Grads: Extended): Extended;
begin
  Result := RadToDeg(GradToRad(Grads));
end;
function GradToCycle(const Grads: Extended): Extended;
begin
  Result := RadToCycle(GradToRad(Grads));
end;

function CycleToDeg(const Cycles: Extended): Extended;
begin
  Result := RadToDeg(CycleToRad(Cycles));
end;

function CycleToGrad(const Cycles: Extended): Extended;
begin
  Result := RadToGrad(CycleToRad(Cycles));
end;

function LnXP1(const X: Extended): Extended;
asm
        FLDLN2
        MOV     AX,WORD PTR X+8               
        FLD     X
        CMP     AX,$3FFD                      
        JB      @@1
        FLD1
        FADD
        FYL2X
        JMP     @@2
@@1:
        FYL2XP1
@@2:
        FWAIT
end;


function IntPower(const Base: Extended; const Exponent: Integer): Extended;
asm
        mov     ecx, eax
        cdq
        fld1                      
        xor     eax, edx
        sub     eax, edx        
        jz      @@3
        fld     Base
        jmp     @@2
@@1:    fmul    ST, ST            
@@2:    shr     eax,1
        jnc     @@1
        fmul    ST(1),ST          
        jnz     @@1
        fstp    st                
        cmp     ecx, 0
        jge     @@3
        fld1
        fdivrp                    
@@3:
        fwait
end;

function Compound(const R: Extended; N: Integer): Extended;

begin
  Result := IntPower(1.0 + R, N)
end;

function Annuity2(const R: Extended; N: Integer; PaymentTime: TPaymentTime;
  var CompoundRN: Extended): Extended;

begin
  if R = 0.0 then
  begin
    CompoundRN := 1.0;
    Result := N;
  end
  else
  begin
    if Abs(R) < 6.1E-5 then
    begin
      CompoundRN := Exp(N * LnXP1(R));
      Result := N*(1+(N-1)*R/2);
    end
    else
    begin
      CompoundRN := Compound(R, N);
      Result := (CompoundRN-1) / R
    end;
    if PaymentTime = ptStartOfPeriod then
      Result := Result * (1 + R);
  end;
end;

procedure PolyX(const A: array of Double; X: Extended; var Poly: TPoly);

var
  I: Integer;
  Neg, Pos, DNeg, DPos: Extended;
begin
  Neg := 0.0;
  Pos := 0.0;
  DNeg := 0.0;
  DPos := 0.0;
  for I := High(A) downto Low(A) do
  begin
    DNeg := X * DNeg + Neg;
    Neg := Neg * X;
    DPos := X * DPos + Pos;
    Pos := Pos * X;
    if A[I] >= 0.0 then
      Pos := Pos + A[I]
    else
      Neg := Neg + A[I]
  end;
  Poly.Neg := Neg;
  Poly.Pos := Pos;
  Poly.DNeg := DNeg * X;
  Poly.DPos := DPos * X;
end; 


function RelSmall(const X, Y: Extended): Boolean;
const
  C1: Double = 1E-15;
  C2: Double = 1E-12;
begin
  Result := Abs(X) < (C1 + C2 * Abs(Y))
end;


function ArcCos(const X : Extended) : Extended; overload;
asm
  FLD   X
  FLD1
  FADD  ST(0), ST(1)
  FLD1
  FSUB  ST(0), ST(2)
  FMULP ST(1), ST(0)
  FSQRT
  FXCH
  FPATAN
end;
function ArcCos(const X : Double) : Double; overload;
asm
  FLD   X
  FLD1
  FADD  ST(0), ST(1)
  FLD1
  FSUB  ST(0), ST(2)
  FMULP ST(1), ST(0)
  FSQRT
  FXCH
  FPATAN
end;
function ArcCos(const X : Single) : Single; overload;
asm
  fld1
  fld    X
  fst    st(2)
  fmul   st(0), st(0)
  fsubp
  fsqrt
  fxch
  fpatan
end;
function ArcSin(const X : Extended) : Extended; overload;
asm
  fld1
  fld    X
  fst    st(2)
  fmul   st(0), st(0)
  fsubp
  fsqrt
  fpatan
end;

function ArcSin(const X : Double) : Double; overload;
asm
  FLD   X
  FLD1
  FADD  ST(0), ST(1)
  FLD1
  FSUB  ST(0), ST(2)
  FMULP ST(1), ST(0)
  FSQRT
  FPATAN
end;
function ArcSin(const X : Single) : Single; overload;
asm
  fld1
  fld    X
  fst    st(2)
  fmul   st(0), st(0)
  fsubp
  fsqrt
  fpatan
end;
function ArcTan2(const Y, X: Extended): Extended;
asm
        FLD     Y
        FLD     X
        FPATAN
        FWAIT
end;

function Tan(const X: Extended): Extended;
asm
        FLD    X
        FPTAN
        FSTP   ST(0)      
        FWAIT
end;

function CoTan(const X: Extended): Extended;
asm
        FLD   X
        FPTAN
        FDIVRP
        FWAIT
end;
function Secant(const X: Extended): Extended;
asm
        FLD   X
        FCOS
        FLD1
        FDIVRP
        FWAIT
end;
function Cosecant(const X: Extended): Extended;
asm
        FLD   X
        FSIN
        FLD1
        FDIVRP
        FWAIT
end;
function Hypot(const X, Y: Extended): Extended;
asm
        FLD     Y
        FABS
        FLD     X
        FABS
        FCOM
        FNSTSW  AX
        TEST    AH,$45
        JNZ      @@1        
        FXCH    ST(1)      
@@1:    FLDZ
        FCOMP
        FNSTSW  AX
        TEST    AH,$40     
        JZ      @@2
        FSTP    ST         
        JMP     @@3
@@2:    FDIV    ST,ST(1)   
        FMUL    ST,ST      
        FLD1
        FADD               
        FSQRT              
        FMUL               
@@3:    FWAIT
end;
procedure SinCos(const Theta: Extended; var Sin, Cos: Extended);
asm
        FLD     Theta
        FSINCOS
        FSTP    tbyte ptr [edx]    
        FSTP    tbyte ptr [eax]   
        FWAIT
end;
procedure Frexp(const X: Extended; var Mantissa: Extended; var Exponent: Integer);
asm
        FLD     X
        PUSH    EAX
        MOV     dword ptr [edx], 0    

        FTST
        FSTSW   AX
        FWAIT
        SAHF
        JZ      @@Done

        FXTRACT  
        FXCH


        FISTP   dword ptr [edx]
        FLD1
        FCHS
        FXCH
        FSCALE                  
        INC     dword ptr [edx] 
        FSTP ST(1)              

@@Done:
        POP     EAX
        FSTP    tbyte ptr [eax]
        FWAIT
end;
function Ldexp(const X: Extended; const P: Integer): Extended;
asm
        PUSH    EAX
        FILD    dword ptr [ESP]
        FLD     X
        FSCALE
        POP     EAX
        FSTP    ST(1)
        FWAIT
end;
function Ceil(const X: Extended): Integer;
begin
  Result := Integer(Trunc(X));
  if Frac(X) > 0 then
    Inc(Result);
end;
function Floor(const X: Extended): Integer;
begin
  Result := Integer(Trunc(X));
  if Frac(X) < 0 then
    Dec(Result);
end;
function Log10(const X: Extended): Extended;
asm
        FLDLG2    
        FLD     X
        FYL2X
        FWAIT
end;
function Log2(const X: Extended): Extended;
asm
        FLD1
        FLD     X
        FYL2X
        FWAIT
end;

function LogN(const Base, X: Extended): Extended;
asm
        FLD1
        FLD     X
        FYL2X
        FLD1
        FLD     Base
        FYL2X
        FDIV
        FWAIT
end;
function Poly(const X: Extended; const Coefficients: array of Double): Extended;
var
  I: Integer;
begin
  Result := Coefficients[High(Coefficients)];
  for I := High(Coefficients)-1 downto Low(Coefficients) do
    Result := Result * X + Coefficients[I];
end;
function Power(const Base, Exponent: Extended): Extended;
const
  Max  : Double = MaxInt;
var
  IntExp : Integer;
asm
  fld     Exponent
  fld     st             
  fabs                   
  fld     Max
  fcompp                )}
  fstsw   ax
  sahf
  jb      @@RealPower    
  fld     st             
  frndint                
  fcomp                  
  fstsw   ax
  sahf
  jne     @@RealPower
  fistp   IntExp
  mov     eax, IntExp    
  mov     ecx, eax
  cdq
  fld1                  
  xor     eax, edx
  sub     eax, edx       
  jz      @@Exit
  fld     Base
  jmp     @@Entry
@@Loop:
  fmul    st, st         
@@Entry:
  shr     eax, 1
  jnc     @@Loop
  fmul    st(1), st      
  jnz     @@Loop
  fstp    st
  cmp     ecx, 0
  jge     @@Exit
  fld1
  fdivrp                 
  jmp     @@Exit
@@RealPower:
  fld     Base
  ftst
  fstsw   ax
  sahf
  jz      @@Done
  fldln2
  fxch
  fyl2x
  fxch
  fmulp   st(1), st
  fldl2e
  fmulp   st(1), st
  fld     st(0)
  frndint
  fsub    st(1), st
  fxch    st(1)
  f2xm1
  fld1
  faddp   st(1), st
  fscale
@@Done:
  fstp    st(1)
@@Exit:
end;
function Power(const Base, Exponent: Double): Double; overload;
const
  Max  : Double = MaxInt;
var
  IntExp : Integer;
asm
  fld     Exponent
  fld     st             
  fabs                   
  fld     Max
  fcompp                 
  fstsw   ax
  sahf
  jb      @@RealPower    
  fld     st             
  frndint               
  fcomp                  
  fstsw   ax
  sahf
  jne     @@RealPower
  fistp   IntExp
  mov     eax, IntExp   
  mov     ecx, eax
  cdq
  fld1                  
  xor     eax, edx
  sub     eax, edx       
  jz      @@Exit
  fld     Base
  jmp     @@Entry
@@Loop:
  fmul    st, st         
@@Entry:
  shr     eax, 1
  jnc     @@Loop
  fmul    st(1), st      
  jnz     @@Loop
  fstp    st
  cmp     ecx, 0
  jge     @@Exit
  fld1
  fdivrp                 
  jmp     @@Exit
@@RealPower:
  fld     Base
  ftst
  fstsw   ax
  sahf
  jz      @@Done
  fldln2
  fxch
  fyl2x
  fxch
  fmulp   st(1), st
  fldl2e
  fmulp   st(1), st
  fld     st(0)
  frndint
  fsub    st(1), st
  fxch    st(1)
  f2xm1
  fld1
  faddp   st(1), st
  fscale
@@Done:
  fstp    st(1)
@@Exit:
end;
function Power(const Base, Exponent: Single): Single; overload;
const
  Max : Double = MaxInt;
var
  IntExp : Integer;
asm
  fld     Exponent
  fld     st             
  fabs                  
  fld     Max
  fcompp                 
  fstsw   ax
  sahf
  jb      @@RealPower    
  fld     st             
  frndint               
  fcomp                  
  fstsw   ax
  sahf
  jne     @@RealPower
  fistp   IntExp
  mov     eax, IntExp    
  mov     ecx, eax
  cdq
  fld1                   
  xor     eax, edx
  sub     eax, edx       
  jz      @@Exit
  fld     Base
  jmp     @@Entry
@@Loop:
  fmul    st, st         
@@Entry:
  shr     eax, 1
  jnc     @@Loop
  fmul    st(1), st      
  jnz     @@Loop
  fstp    st
  cmp     ecx, 0
  jge     @@Exit
  fld1
  fdivrp                 
  jmp     @@Exit
@@RealPower:
  fld     Base
  ftst
  fstsw   ax
  sahf
  jz      @@Done
  fldln2
  fxch
  fyl2x
  fxch
  fmulp   st(1), st
  fldl2e
  fmulp   st(1), st
  fld     st(0)
  frndint
  fsub    st(1), st
  fxch    st(1)
  f2xm1
  fld1
  faddp   st(1), st
  fscale
@@Done:
  fstp    st(1)
@@Exit:
end;
function Cosh(const X: Extended): Extended;
begin
  if IsZero(X) then
    Result := 1
  else
    Result := (Exp(X) + Exp(-X)) / 2;
end;
function Sinh(const X: Extended): Extended;
begin
  if IsZero(X) then
    Result := 0
  else
    Result := (Exp(X) - Exp(-X)) / 2;
end;
function Tanh(const X: Extended): Extended;
begin
  if IsZero(X) then
    Result := 0
  else
    Result := SinH(X) / CosH(X);
end;
function ArcCosh(const X: Extended): Extended;
begin
  Result := Ln(X + Sqrt((X - 1) / (X + 1)) * (X + 1));
end;
function ArcSinh(const X: Extended): Extended;
begin
  Result := Ln(X + Sqrt((X * X) + 1));
end;
function ArcTanh(const X: Extended): Extended;
begin
  if SameValue(X, 1) then
    Result := Infinity
  else if SameValue(X, -1) then
    Result := NegInfinity
  else
    Result := 0.5 * Ln((1 + X) / (1 - X));
end;
function Cot(const X: Extended): Extended;
begin
  Result := CoTan(X);
end;
function Sec(const X: Extended): Extended;
begin
  Result := Secant(X);
end;
function Csc(const X: Extended): Extended;
begin
  Result := Cosecant(X);
end;
function CotH(const X: Extended): Extended;
begin
  Result := 1 / TanH(X);
end;
function SecH(const X: Extended): Extended;
begin
  Result := 1 / CosH(X);
end;
function CscH(const X: Extended): Extended;
begin
  Result := 1 / SinH(X);
end;
function ArcCot(const X: Extended): Extended;
begin
  if IsZero(X) then
    Result := PI / 2
  else
    Result := ArcTan(1 / X);
end;
function ArcSec(const X: Extended): Extended;
begin
  if IsZero(X) then
    Result := Infinity
  else
    Result := ArcCos(1 / X);
end;
function ArcCsc(const X: Extended): Extended;
begin
  if IsZero(X) then
    Result := Infinity
  else
    Result := ArcSin(1 / X);
end;
function ArcCotH(const X: Extended): Extended;
begin
  if SameValue(X, 1) then
    Result := Infinity
  else if SameValue(X, -1) then
    Result := NegInfinity
  else
    Result := 0.5 * Ln((X + 1) / (X - 1));
end;
function ArcSecH(const X: Extended): Extended;
begin
  if IsZero(X) then
    Result := Infinity
  else if SameValue(X, 1) then
    Result := 0
  else
    Result := Ln((Sqrt(1 - X * X) + 1) / X);
end;
function ArcCscH(const X: Extended): Extended;
begin
  Result := Ln(Sqrt(1 + (1 / (X * X)) + (1 / X)));
end;
function IsNan(const AValue: Single): Boolean;
begin
  Result := ((PLongWord(@AValue)^ and $7F800000)  = $7F800000) and
            ((PLongWord(@AValue)^ and $007FFFFF) <> $00000000);
end;
function IsNan(const AValue: Double): Boolean;
begin
  Result := ((PInt64(@AValue)^ and $7FF0000000000000)  = $7FF0000000000000) and
            ((PInt64(@AValue)^ and $000FFFFFFFFFFFFF) <> $0000000000000000);
end;
function IsNan(const AValue: Extended): Boolean;
type
  TExtented = packed record
    Mantissa: Int64;
    Exponent: Word;
  end;
  PExtended = ^TExtented;
begin
  Result := ((PExtended(@AValue)^.Exponent and $7FFF)  = $7FFF) and
            ((PExtended(@AValue)^.Mantissa and $7FFFFFFFFFFFFFFF) <> 0);
end;
function IsInfinite(const AValue: Double): Boolean;
begin
  Result := ((PInt64(@AValue)^ and $7FF0000000000000) = $7FF0000000000000) and
            ((PInt64(@AValue)^ and $000FFFFFFFFFFFFF) = $0000000000000000);
end;
function Mean(const Data: array of Double): Extended;
begin
  Result := SUM(Data) / (High(Data) - Low(Data) + 1);
end;
function MinValue(const Data: array of Double): Double;
var
  I: Integer;
begin
  Result := Data[Low(Data)];
  for I := Low(Data) + 1 to High(Data) do
    if Result > Data[I] then
      Result := Data[I];
end;
function MinIntValue(const Data: array of Integer): Integer;
var
  I: Integer;
begin
  Result := Data[Low(Data)];
  for I := Low(Data) + 1 to High(Data) do
    if Result > Data[I] then
      Result := Data[I];
end;
function Min(const A, B: Integer): Integer;
begin
  if A < B then
    Result := A
  else
    Result := B;
end;
function Min(const A, B: Int64): Int64;
begin
  if A < B then
    Result := A
  else
    Result := B;
end;
function Min(const A, B: Single): Single;
begin
  if A < B then
    Result := A
  else
    Result := B;
end;
function Min(const A, B: Double): Double;
begin
  if A < B then
    Result := A
  else
    Result := B;
end;
function Min(const A, B: Extended): Extended;
begin
  if A < B then
    Result := A
  else
    Result := B;
end;
function MaxValue(const Data: array of Double): Double;
var
  I: Integer;
begin
  Result := Data[Low(Data)];
  for I := Low(Data) + 1 to High(Data) do
    if Result < Data[I] then
      Result := Data[I];
end;
function MaxIntValue(const Data: array of Integer): Integer;
var
  I: Integer;
begin
  Result := Data[Low(Data)];
  for I := Low(Data) + 1 to High(Data) do
    if Result < Data[I] then
      Result := Data[I];
end;
function Max(const A, B: Integer): Integer;
begin
  if A > B then
    Result := A
  else
    Result := B;
end;
function Max(const A, B: Int64): Int64;
begin
  if A > B then
    Result := A
  else
    Result := B;
end;
function Max(const A, B: Single): Single;
begin
  if A > B then
    Result := A
  else
    Result := B;
end;
function Max(const A, B: Double): Double;
begin
  if A > B then
    Result := A
  else
    Result := B;
end;
function Max(const A, B: Extended): Extended;
begin
  if A > B then
    Result := A
  else
    Result := B;
end;
function Sign(const AValue: Integer): TValueSign;
begin
  Result := ZeroValue;
  if AValue < 0 then
    Result := NegativeValue
  else if AValue > 0 then
    Result := PositiveValue;
end;
function Sign(const AValue: Int64): TValueSign;
begin
  Result := ZeroValue;
  if AValue < 0 then
    Result := NegativeValue
  else if AValue > 0 then
    Result := PositiveValue;
end;
function Sign(const AValue: Double): TValueSign;
begin
  if ((PInt64(@AValue)^ and $7FFFFFFFFFFFFFFF) = $0000000000000000) then
    Result := ZeroValue
  else if ((PInt64(@AValue)^ and $8000000000000000) = $8000000000000000) then
    Result := NegativeValue
  else
    Result := PositiveValue;
end;
const
  FuzzFactor = 1000;
  ExtendedResolution = 1E-19 * FuzzFactor;
  DoubleResolution   = 1E-15 * FuzzFactor;
  SingleResolution   = 1E-7 * FuzzFactor;
function CompareValue(const A, B: Extended; Epsilon: Extended): TValueRelationship;
begin
  if SameValue(A, B, Epsilon) then
    Result := EqualsValue
  else if A < B then
    Result := LessThanValue
  else
    Result := GreaterThanValue;
end;
function CompareValue(const A, B: Double; Epsilon: Double): TValueRelationship;
begin
  if SameValue(A, B, Epsilon) then
    Result := EqualsValue
  else if A < B then
    Result := LessThanValue
  else
    Result := GreaterThanValue;
end;
function CompareValue(const A, B: Single; Epsilon: Single): TValueRelationship;
begin
  if SameValue(A, B, Epsilon) then
    Result := EqualsValue
  else if A < B then
    Result := LessThanValue
  else
    Result := GreaterThanValue;
end;
function CompareValue(const A, B: Integer): TValueRelationship;
begin
  if A = B then
    Result := EqualsValue
  else if A < B then
    Result := LessThanValue
  else
    Result := GreaterThanValue;
end;
function CompareValue(const A, B: Int64): TValueRelationship;
begin
  if A = B then
    Result := EqualsValue
  else if A < B then
    Result := LessThanValue
  else
    Result := GreaterThanValue;
end;

function SameValue(const A, B: Extended; Epsilon: Extended): Boolean;
begin
  if Epsilon = 0 then
    Epsilon := Max(Min(Abs(A), Abs(B)) * ExtendedResolution, ExtendedResolution);
  if A > B then
    Result := (A - B) <= Epsilon
  else
    Result := (B - A) <= Epsilon;
end;

function SameValue(const A, B: Double; Epsilon: Double): Boolean;
begin
  if Epsilon = 0 then
    Epsilon := Max(Min(Abs(A), Abs(B)) * DoubleResolution, DoubleResolution);
  if A > B then
    Result := (A - B) <= Epsilon
  else
    Result := (B - A) <= Epsilon;
end;

function SameValue(const A, B: Single; Epsilon: Single): Boolean;
begin
  if Epsilon = 0 then
    Epsilon := Max(Min(Abs(A), Abs(B)) * SingleResolution, SingleResolution);
  if A > B then
    Result := (A - B) <= Epsilon
  else
    Result := (B - A) <= Epsilon;
end;

function IsZero(const A: Extended; Epsilon: Extended): Boolean;
begin
  if Epsilon = 0 then
    Epsilon := ExtendedResolution;
  Result := Abs(A) <= Epsilon;
end;

function IsZero(const A: Double; Epsilon: Double): Boolean;
begin
  if Epsilon = 0 then
    Epsilon := DoubleResolution;
  Result := Abs(A) <= Epsilon;
end;

function IsZero(const A: Single; Epsilon: Single): Boolean;
begin
  if Epsilon = 0 then
    Epsilon := SingleResolution;
  Result := Abs(A) <= Epsilon;
end;

function IfThen(AValue: Boolean; const ATrue: Integer; const AFalse: Integer): Integer;
begin
  if AValue then
    Result := ATrue
  else
    Result := AFalse;
end;

function IfThen(AValue: Boolean; const ATrue: Int64; const AFalse: Int64): Int64;
begin
  if AValue then
    Result := ATrue
  else
    Result := AFalse;
end;

function IfThen(AValue: Boolean; const ATrue: Double; const AFalse: Double): Double;
begin
  if AValue then
    Result := ATrue
  else
    Result := AFalse;
end;

function RandomRange(const AFrom, ATo: Integer): Integer;
begin
  if AFrom > ATo then
    Result := Random(AFrom - ATo) + ATo
  else
    Result := Random(ATo - AFrom) + AFrom;
end;

function RandomFrom(const AValues: array of Integer): Integer;
begin
  Result := AValues[Random(High(AValues) + 1)];
end;

function RandomFrom(const AValues: array of Int64): Int64;
begin
  Result := AValues[Random(High(AValues) + 1)];
end;

function RandomFrom(const AValues: array of Double): Double;
begin
  Result := AValues[Random(High(AValues) + 1)];
end;

function InRange(const AValue, AMin, AMax: Integer): Boolean;
var
  A,B: Boolean;
begin
  A := (AValue >= AMin);
  B := (AValue <= AMax);
  Result := B and A;
end;

function InRange(const AValue, AMin, AMax: Int64): Boolean;
var
  A,B: Boolean;
begin
  A := (AValue >= AMin);
  B := (AValue <= AMax);
  Result := B and A;
end;

function InRange(const AValue, AMin, AMax: Double): Boolean;
var
  A,B: Boolean;
begin
  A := (AValue >= AMin);
  B := (AValue <= AMax);
  Result := B and A;
end;

function EnsureRange(const AValue, AMin, AMax: Integer): Integer;
begin
  Result := AValue;
  assert(AMin <= AMax);
  if Result < AMin then
    Result := AMin;
  if Result > AMax then
    Result := AMax;
end;

function EnsureRange(const AValue, AMin, AMax: Int64): Int64;
begin
  Result := AValue;
  assert(AMin <= AMax);
  if Result < AMin then
    Result := AMin;
  if Result > AMax then
    Result := AMax;
end;

function EnsureRange(const AValue, AMin, AMax: Double): Double;
begin
  Result := AValue;
  assert(AMin <= AMax);
  if Result < AMin then
    Result := AMin;
  if Result > AMax then
    Result := AMax;
end;

procedure MeanAndStdDev(const Data: array of Double; var Mean, StdDev: Extended);
var
  S: Extended;
  N,I: Integer;
begin
  N := High(Data)- Low(Data) + 1;
  if N = 1 then
  begin
    Mean := Data[0];
    StdDev := Data[0];
    Exit;
  end;
  Mean := Sum(Data) / N;
  S := 0;              
  for I := Low(Data) to High(Data) do
    S := S + Sqr(Mean - Data[I]);
  StdDev := Sqrt(S / (N - 1));
end;

procedure MomentSkewKurtosis(const Data: array of Double;
  var M1, M2, M3, M4, Skew, Kurtosis: Extended);
var
  Sum, SumSquares, SumCubes, SumQuads, OverN, Accum, M1Sqr, S2N, S3N: Extended;
  I: Integer;
begin
  OverN := 1 / (High(Data) - Low(Data) + 1);
  Sum := 0;
  SumSquares := 0;
  SumCubes := 0;
  SumQuads := 0;
  for I := Low(Data) to High(Data) do
  begin
    Sum := Sum + Data[I];
    Accum := Sqr(Data[I]);
    SumSquares := SumSquares + Accum;
    Accum := Accum*Data[I];
    SumCubes := SumCubes + Accum;
    SumQuads := SumQuads + Accum*Data[I];
  end;
  M1 := Sum * OverN;
  M1Sqr := Sqr(M1);
  S2N := SumSquares * OverN;
  S3N := SumCubes * OverN;
  M2 := S2N - M1Sqr;
  M3 := S3N - (M1 * 3 * S2N) + 2*M1Sqr*M1;
  M4 := (SumQuads * OverN) - (M1 * 4 * S3N) + (M1Sqr*6*S2N - 3*Sqr(M1Sqr));
  Skew := M3 * Power(M2, -3/2);   
  Kurtosis := M4 / Sqr(M2);
end;

function Norm(const Data: array of Double): Extended;
begin
  Result := Sqrt(SumOfSquares(Data));
end;

function PopnStdDev(const Data: array of Double): Extended;
begin
  Result := Sqrt(PopnVariance(Data))
end;

function PopnVariance(const Data: array of Double): Extended;
begin
  Result := TotalVariance(Data) / (High(Data) - Low(Data) + 1)
end;

function RandG(Mean, StdDev: Extended): Extended;

var
  U1, S2: Extended;
begin
  repeat
    U1 := 2*Random - 1;
    S2 := Sqr(U1) + Sqr(2*Random-1);
  until S2 < 1;
  Result := Sqrt(-2*Ln(S2)/S2) * U1 * StdDev + Mean;
end;

function StdDev(const Data: array of Double): Extended;
begin
  Result := Sqrt(Variance(Data))
end;

procedure RaiseOverflowError; forward;

function SumInt(const Data: array of Integer): Integer;

asm  

      PUSH EBX
      MOV  ECX, EAX        
      MOV  EBX, EDX
      XOR  EAX, EAX
      AND  EDX, not 3
      AND  EBX, 3
      SHL  EDX, 2
      JMP  @Vector.Pointer[EBX*4]
@Vector:
      DD @@1
      DD @@2
      DD @@3
      DD @@4
@@4:
      ADD  EAX, [ECX+12+EDX]
      JO   RaiseOverflowError
@@3:
      ADD  EAX, [ECX+8+EDX]
      JO   RaiseOverflowError
@@2:
      ADD  EAX, [ECX+4+EDX]
      JO   RaiseOverflowError
@@1:
      ADD  EAX, [ECX+EDX]
      JO   RaiseOverflowError
      SUB  EDX,16
      JNS  @@4
      POP  EBX
end;


procedure RaiseOverflowError;
begin
  raise EIntOverflow.Create(SIntOverflow);
end;

function SUM(const Data: array of Double): Extended;

asm 

       FLDZ
       MOV      ECX, EDX
       FLD      ST(0)
       AND      EDX, not 3
       FLD      ST(0)
       AND      ECX, 3
       FLD      ST(0)
       SHL      EDX, 3     
       JMP      @Vector.Pointer[ECX*4]
@Vector:
       DD @@1
       DD @@2
       DD @@3
       DD @@4
@@4:   FADD     qword ptr [EAX+EDX+24]    
       FXCH     ST(3)                    
@@3:   FADD     qword ptr [EAX+EDX+16]   
       FXCH     ST(2)                     
@@2:   FADD     qword ptr [EAX+EDX+8]    
       FXCH     ST(1)                    
@@1:   FADD     qword ptr [EAX+EDX]      
       FXCH     ST(2)                    
       SUB      EDX, 32
       JNS      @@4
       FADDP    ST(3),ST                  
       FADD                               
       FADD                               
       FWAIT
end;


function SumOfSquares(const Data: array of Double): Extended;
var
  I: Integer;
begin
  Result := 0.0;
  for I := Low(Data) to High(Data) do
    Result := Result + Sqr(Data[I]);
end;

procedure SumsAndSquares(const Data: array of Double; var Sum, SumOfSquares: Extended);

asm  
   
  
    
       FLDZ                
       PUSH     ECX
       MOV      ECX, EDX
       FLD      ST(0)       
       AND      EDX, not 3
       FLD      ST(0)       
       AND      ECX, 3
       FLD      ST(0)       
       SHL      EDX, 3      
       JMP      @Vector.Pointer[ECX*4]
@Vector:
       DD @@1
       DD @@2
       DD @@3
       DD @@4
@@4:   FADD                            
       FLD     qword ptr [EAX+EDX+24] 
       FADD    ST(3),ST                
       FMUL    ST,ST                   
@@3:   FLD     qword ptr [EAX+EDX+16]  
       FADD    ST(4),ST                
       FMUL    ST,ST                   
       FXCH                           
       FADDP   ST(3),ST                
@@2:   FLD     qword ptr [EAX+EDX+8]   
       FADD    ST(4),ST                
       FMUL    ST,ST                  
       FXCH                           
       FADDP   ST(3),ST               
@@1:   FLD     qword ptr [EAX+EDX]     
       FADD    ST(4),ST                
       FMUL    ST,ST                   
       FXCH                            
       FADDP   ST(3),ST             
       SUB     EDX,32
       JNS     @@4
       FADD                        
       POP     ECX
       FADD                         
       FXCH                         
       MOV     EAX, SumOfSquares
       FSTP    tbyte ptr [ECX]      
       FSTP    tbyte ptr [EAX]     
       FWAIT
end;


function TotalVariance(const Data: array of Double): Extended;
var
  Sum, SumSquares: Extended;
begin
  SumsAndSquares(Data, Sum, SumSquares);
  Result := SumSquares - Sqr(Sum)/(High(Data) - Low(Data) + 1);
end;

function Variance(const Data: array of Double): Extended;
begin
  Result := TotalVariance(Data) / (High(Data) - Low(Data))
end;

function Fact(n:integer):integer;
begin
if n<=0 then fact:=1 else fact:=n*fact(n-1);
end;

function DoubleDecliningBalance(const Cost, Salvage: Extended; Life, Period: Integer): Extended;


var
  DepreciatedVal, Factor: Extended;
begin
  Result := 0;
  if (Period < 1) or (Life < Period) or (Life < 1) or (Cost <= Salvage) then
    Exit;

  if ( Life <= 2 ) then
  begin
    if ( Period = 1 ) then
      DoubleDecliningBalance:=Cost-Salvage
    else
      DoubleDecliningBalance:=0; 
    exit;
  end;
  Factor := 2.0 / Life;

  DepreciatedVal := Cost * IntPower((1.0 - Factor), Period - 1);
 


  if Result > DepreciatedVal - Salvage then
    Result := DepreciatedVal - Salvage;

  if Result < 0.0 then
    Result := 0.0;
end;

function SLNDepreciation(const Cost, Salvage: Extended; Life: Integer): Extended;
begin
  if Life < 1 then ArgError('SLNDepreciation');
  Result := (Cost - Salvage) / Life
end;

function SYDDepreciation(const Cost, Salvage: Extended; Life, Period: Integer): Extended;

var
  X1, X2: Extended;
begin
  Result := 0;
  if (Period < 1) or (Life < Period) or (Cost <= Salvage) then Exit;
  X1 := 2 * (Life - Period + 1);
  X2 := Life * (Life + 1);
  Result := (Cost - Salvage) * X1 / X2
end;


function InternalRateOfReturn(const Guess: Extended; const CashFlows: array of Double): Extended;

var
  T, Y: Extended;
  Poly: TPoly;
  K, Count: Integer;

  function ConditionP(const CashFlows: array of Double): Integer;

  var
    X: Double;
    I, K: Integer;
  begin
    K := High(CashFlows);
    while (K >= 0) and (CashFlows[K] >= 0.0) do Dec(K);
    Inc(K);
    if K > 0 then
    begin
      X := 0.0;
      I := 0;
      while I < K do
      begin
        X := X + CashFlows[I];
        if X >= 0.0 then
        begin
          K := 0;
          Break;
        end;
        Inc(I)
      end
    end;
    ConditionP := K
  end;

begin
  InternalRateOfReturn := 0;
  K := ConditionP(CashFlows);
  if K < 0 then ArgError('InternalRateOfReturn');
  if K = 0 then
  begin
    if Guess <= -1.0 then ArgError('InternalRateOfReturn');
    T := -LnXP1(Guess)
  end else
    T := 0.0;
  for Count := 1 to MaxIterations do
  begin
    PolyX(CashFlows, Exp(T), Poly);
    if Poly.Pos <= Poly.Neg then ArgError('InternalRateOfReturn');
    if (Poly.Neg >= 0.0) or (Poly.Pos <= 0.0) then
    begin
      InternalRateOfReturn := -1.0;
      Exit;
    end;
    with Poly do
      Y := Ln(-Neg / Pos) / (DNeg / Neg - DPos / Pos);
    T := T - Y;
    if RelSmall(Y, T) then
    begin
      InternalRateOfReturn := Exp(-T) - 1.0;
      Exit;
    end
  end;
  ArgError('InternalRateOfReturn');
end;

function NetPresentValue(const Rate: Extended; const CashFlows: array of Double;
  PaymentTime: TPaymentTime): Extended;
var
  rr: Extended;
  I: Integer;
begin
  if Rate <= -1.0 then ArgError('NetPresentValue');
  rr := 1/(1+Rate);
  result := 0;
  for I := High(CashFlows) downto Low(CashFlows) do
    result := rr * result + CashFlows[I];
  if PaymentTime = ptEndOfPeriod then result := rr * result;
end;

function PaymentParts(Period, NPeriods: Integer; Rate, PresentValue,
  FutureValue: Extended; PaymentTime: TPaymentTime; var IntPmt: Extended):
  Extended;
var
  Crn:extended; 
  Crp:extended; 
  Arn:extended;

begin
  if Rate <= -1.0 then ArgError('PaymentParts');
  Crp:=Compound(Rate,Period-1);
  Arn:=Annuity2(Rate,NPeriods,PaymentTime,Crn);
  IntPmt:=(FutureValue*(Crp-1)-PresentValue*(Crn-Crp))/Arn;
  PaymentParts:=(-FutureValue-PresentValue)*Crp/Arn;
end;

function FutureValue(const Rate: Extended; NPeriods: Integer; const Payment,
  PresentValue: Extended; PaymentTime: TPaymentTime): Extended;
var
  Annuity, CompoundRN: Extended;
begin
  if Rate <= -1.0 then ArgError('FutureValue');
  Annuity := Annuity2(Rate, NPeriods, PaymentTime, CompoundRN);
  if CompoundRN > 1.0E16 then ArgError('FutureValue');
  FutureValue := -Payment * Annuity - PresentValue * CompoundRN
end;

function InterestPayment(const Rate: Extended; Period, NPeriods: Integer;
  const PresentValue, FutureValue: Extended; PaymentTime: TPaymentTime): Extended;
var
  Crp:extended; 
  Crn:extended; 
  Arn:extended; 
begin
  if (Rate <= -1.0)
    or (Period < 1) or (Period > NPeriods) then ArgError('InterestPayment');
  Crp:=Compound(Rate,Period-1);
  Arn:=Annuity2(Rate,Nperiods,PaymentTime,Crn);
  InterestPayment:=(FutureValue*(Crp-1)-PresentValue*(Crn-Crp))/Arn;
end;

function InterestRate(NPeriods: Integer; const Payment, PresentValue,
  FutureValue: Extended; PaymentTime: TPaymentTime): Extended;

var
  X, Y, Z, First, Pmt, Last, T, ET, EnT, ET1: Extended;
  Count: Integer;
  Reverse: Boolean;

  function LostPrecision(X: Extended): Boolean;
  asm
        XOR     EAX, EAX
        MOV     BX,WORD PTR X+8
        INC     EAX
        AND     EBX, $7FF0
        JZ      @@1
        CMP     EBX, $7FF0
        JE      @@1
        XOR     EAX,EAX
  @@1:
  end;

begin
  Result := 0;
  if NPeriods <= 0 then ArgError('InterestRate');
  Pmt := Payment;
  if PaymentTime = ptEndOfPeriod then
  begin
    X := PresentValue;
    Y := FutureValue + Payment
  end
  else
  begin
    X := PresentValue + Payment;
    Y := FutureValue
  end;
  First := X;
  Last := Y;
  Reverse := False;
  if First * Payment > 0.0 then
  begin
    Reverse := True;
    T := First;
    First := Last;
    Last := T
  end;
  if first > 0.0 then
  begin
    First := -First;
    Pmt := -Pmt;
    Last := -Last
  end;
  if (First = 0.0) or (Last < 0.0) then ArgError('InterestRate');
  T := 0.0;                     
  for Count := 1 to MaxIterations do
  begin
    EnT := Exp(NPeriods * T);
    if  ent=(ent+1) then
    begin
      Result := -Pmt / First;
      if Reverse then
        Result := Exp(-LnXP1(Result)) - 1.0;
      Exit;
    end;
    ET := Exp(T);
    ET1 := ET - 1.0;
    if ET1 = 0.0 then
    begin
      X := NPeriods;
      Y := X * (X - 1.0) / 2.0
    end
    else
    begin
      X := ET * (Exp((NPeriods - 1) * T)-1.0) / ET1;
      Y := (NPeriods * EnT - ET - X * ET) / ET1
    end;
    Z := Pmt * X + Last * EnT;
    Y := Ln(Z / -First) / ((Pmt * Y + Last * NPeriods *EnT) / Z);
    T := T - Y;
    if RelSmall(Y, T) then
    begin
      if not Reverse then T := -T;
      InterestRate := Exp(T)-1.0;
      Exit;
    end
  end;
  ArgError('InterestRate');
end;

function NumberOfPeriods(const Rate: Extended; Payment: Extended;
  const PresentValue, FutureValue: Extended; PaymentTime: TPaymentTime): Extended;



var
  PVRPP: Extended; 
  T:     Extended;

begin

  if Rate <= -1.0 then ArgError('NumberOfPeriods');



  if ( PaymentTime=ptStartOfPeriod ) then
    Payment:=Payment*(1+Rate);


  PVRPP:=PresentValue*Rate+Payment;
  if PVRPP=0 then ArgError('NumberOfPeriods');


  if ( ABS(Rate)<6.1E-5 ) then
    Result:=-(PresentValue+FutureValue)/PVRPP
  else
  begin



    T:= -(PresentValue+FutureValue)*Rate/PVRPP;
    if  T<=-1.0  then ArgError('NumberOfPeriods');
    Result := LnXP1(T) / LnXP1(Rate)
  end;
  NumberOfPeriods:=Result;
end;

function Payment(Rate: Extended; NPeriods: Integer; const PresentValue,
  FutureValue: Extended; PaymentTime: TPaymentTime): Extended;
var
  Annuity, CompoundRN: Extended;
begin
  if Rate <= -1.0 then ArgError('Payment');
  Annuity := Annuity2(Rate, NPeriods, PaymentTime, CompoundRN);
  if CompoundRN > 1.0E16 then
    Payment := -PresentValue * Rate / (1 + Integer(PaymentTime) * Rate)
  else
    Payment := (-PresentValue * CompoundRN - FutureValue) / Annuity
end;

function PeriodPayment(const Rate: Extended; Period, NPeriods: Integer;
  const PresentValue, FutureValue: Extended; PaymentTime: TPaymentTime): Extended;
var
  Junk: Extended;
begin
  if (Rate <= -1.0) or (Period < 1) or (Period > NPeriods) then ArgError('PeriodPayment');
  PeriodPayment := PaymentParts(Period, NPeriods, Rate, PresentValue,
       FutureValue, PaymentTime, Junk);
end;

function PresentValue(const Rate: Extended; NPeriods: Integer; const Payment,
  FutureValue: Extended; PaymentTime: TPaymentTime): Extended;
var
  Annuity, CompoundRN: Extended;
begin
  if Rate <= -1.0 then ArgError('PresentValue');
  Annuity := Annuity2(Rate, NPeriods, PaymentTime, CompoundRN);
  if CompoundRN > 1.0E16 then
    PresentValue := -(Payment / Rate * Integer(PaymentTime) * Payment)
  else
    PresentValue := (-Payment * Annuity - FutureValue) / CompoundRN
end;

function GetRoundMode: TFPURoundingMode;
begin
  Result := TFPURoundingMode((Get8087CW shr 10) and 3);
end;

function SetRoundMode(const RoundMode: TFPURoundingMode): TFPURoundingMode;
var
  CtlWord: Word;
begin
  CtlWord := Get8087CW;
  Set8087CW((CtlWord and $F3FF) or (Ord(RoundMode) shl 10));
  Result := TFPURoundingMode((CtlWord shr 10) and 3);
end;

function GetPrecisionMode: TFPUPrecisionMode;
begin
  Result := TFPUPrecisionMode((Get8087CW shr 8) and 3);
end;

function SetPrecisionMode(const Precision: TFPUPrecisionMode): TFPUPrecisionMode;
var
  CtlWord: Word;
begin
  CtlWord := Get8087CW;
  Set8087CW((CtlWord and $FCFF) or (Ord(Precision) shl 8));
  Result := TFPUPrecisionMode((CtlWord shr 8) and 3);
end;

function GetExceptionMask: TFPUExceptionMask;
begin
  Byte(Result) := Get8087CW and $3F;
end;

function SetExceptionMask(const Mask: TFPUExceptionMask): TFPUExceptionMask;
var
  CtlWord: Word;
begin
  CtlWord := Get8087CW;
  Set8087CW( (CtlWord and $FFC0) or Byte(Mask) );
  Byte(Result) := CtlWord and $3F;
end;

procedure ClearExceptions(RaisePending: Boolean);
asm
  cmp al, 0
  jz @@clear
  fwait
@@clear:
  fnclex
end;

end.
