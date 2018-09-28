; ModuleID = 'cg.c'
source_filename = "cg.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@firstrow = internal unnamed_addr global i1 false, align 4
@lastrow = internal unnamed_addr global i1 false, align 4
@firstcol = internal unnamed_addr global i1 false, align 4
@lastcol = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c" Size: %10d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" Iterations: %5d\0A\00", align 1
@naa = internal unnamed_addr global i1 false, align 4
@nzz = internal unnamed_addr global i1 false, align 4
@tran = internal global double 0.000000e+00, align 8
@amult = internal unnamed_addr global double 0.000000e+00, align 8
@a = internal global [2198001 x double] zeroinitializer, align 16
@colidx = internal global [2198001 x i32] zeroinitializer, align 16
@rowstr = internal global [14002 x i32] zeroinitializer, align 16
@arow = internal global [2198001 x i32] zeroinitializer, align 16
@acol = internal global [2198001 x i32] zeroinitializer, align 16
@aelt = internal global [2198001 x double] zeroinitializer, align 16
@v = internal global [14002 x double] zeroinitializer, align 16
@iv = internal global [28002 x i32] zeroinitializer, align 16
@x = internal global [14003 x double] zeroinitializer, align 16
@q = internal global [14003 x double] zeroinitializer, align 16
@z = internal global [14003 x double] zeroinitializer, align 16
@r = internal global [14003 x double] zeroinitializer, align 16
@p = internal global [14003 x double] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [30 x i8] c"    %5d       %20.14e%20.13e\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c" Zeta is    %20.12e\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" Error is   %20.12e\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c" Zeta                %20.12e\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c" The correct zeta is %20.12e\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"CG\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"          floating point\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"3.0 structured\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"27 Sep 2018\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"clang\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"-Ofast \00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"randdp\00", align 1
@conj_grad.callcount = internal unnamed_addr global i32 0, align 4
@.str.25 = private unnamed_addr constant [22 x i8] c"nnza, nzmax = %d, %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"iouter = %d\0A\00", align 1
@str = private unnamed_addr constant [74 x i8] c"\0A\0A NAS Parallel Benchmarks 3.0 structured OpenMP C version - CG Benchmark\00"
@str.27 = private unnamed_addr constant [21 x i8] c" Benchmark completed\00"
@str.28 = private unnamed_addr constant [21 x i8] c" VERIFICATION FAILED\00"
@str.29 = private unnamed_addr constant [25 x i8] c" VERIFICATION SUCCESSFUL\00"
@str.30 = private unnamed_addr constant [50 x i8] c"   iteration           ||r||                 zeta\00"
@str.32 = private unnamed_addr constant [44 x i8] c"Space for matrix elements exceeded in makea\00"

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #7
  store i1 true, i1* @firstrow, align 4
  store i1 true, i1* @lastrow, align 4
  store i1 true, i1* @firstcol, align 4
  store i1 true, i1* @lastcol, align 4
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @str, i64 0, i64 0))
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 14000)
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 15)
  store i1 true, i1* @naa, align 4
  store i1 true, i1* @nzz, align 4
  store double 0x41B2B9B0A1000000, double* @tran, align 8, !tbaa !1
  store double 0x41D2309CE5400000, double* @amult, align 8, !tbaa !1
  %8 = tail call fast double @randlc(double* nonnull @tran, double 0x41D2309CE5400000) #7
  %9 = load i1, i1* @naa, align 4
  %10 = select i1 %9, i32 14000, i32 0
  %11 = load i1, i1* @nzz, align 4
  %12 = select i1 %11, i32 2198000, i32 0
  %13 = load i1, i1* @firstrow, align 4
  %14 = zext i1 %13 to i32
  %15 = load i1, i1* @lastrow, align 4
  %16 = select i1 %15, i32 14000, i32 0
  %17 = load i1, i1* @firstcol, align 4
  %18 = zext i1 %17 to i32
  %19 = load i1, i1* @lastcol, align 4
  %20 = select i1 %19, i32 14000, i32 0
  %21 = sitofp i32 %10 to double
  %22 = fdiv fast double 1.000000e+00, %21
  %23 = tail call fast double @llvm.pow.f64(double 1.000000e-01, double %22) #7
  br i1 %9, label %24, label %35

; <label>:24:                                     ; preds = %2
  %25 = zext i32 %10 to i64
  %26 = or i64 %25, 1
  %27 = getelementptr [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %26
  %28 = bitcast i32* %27 to i8*
  %29 = add nsw i32 %10, -1
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 2
  %32 = add nuw nsw i64 %31, 4
  tail call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 %32, i32 4, i1 false) #7
  %33 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %25
  br label %39

; <label>:34:                                     ; preds = %162
  br label %35

; <label>:35:                                     ; preds = %34, %2
  %36 = phi i32 [ 0, %2 ], [ %156, %34 ]
  %37 = icmp ult i32 %16, %14
  br i1 %37, label %190, label %38

; <label>:38:                                     ; preds = %35
  br label %166

; <label>:39:                                     ; preds = %162, %24
  %40 = phi i32 [ 0, %24 ], [ %156, %162 ]
  %41 = phi i32 [ 1, %24 ], [ %164, %162 ]
  %42 = phi double [ 1.000000e+00, %24 ], [ %163, %162 ]
  br label %43

; <label>:43:                                     ; preds = %43, %39
  %44 = phi i32 [ 1, %39 ], [ %45, %43 ]
  %45 = shl nsw i32 %44, 1
  %46 = icmp slt i32 %45, %10
  br i1 %46, label %43, label %47

; <label>:47:                                     ; preds = %43
  %48 = sitofp i32 %45 to double
  br label %49

; <label>:49:                                     ; preds = %66, %47
  %50 = phi i64 [ 0, %47 ], [ %67, %66 ]
  br label %51

; <label>:51:                                     ; preds = %60, %49
  %52 = load double, double* @amult, align 8, !tbaa !1
  %53 = tail call fast double @randlc(double* nonnull @tran, double %52) #7
  %54 = load double, double* @amult, align 8, !tbaa !1
  %55 = tail call fast double @randlc(double* nonnull @tran, double %54) #7
  %56 = fmul fast double %55, %48
  %57 = fptosi double %56 to i32
  %58 = add nsw i32 %57, 1
  %59 = icmp slt i32 %57, %10
  br i1 %59, label %61, label %60

; <label>:60:                                     ; preds = %51, %61
  br label %51

; <label>:61:                                     ; preds = %51
  %62 = sext i32 %58 to i64
  %63 = getelementptr inbounds i32, i32* %33, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %60

; <label>:66:                                     ; preds = %61
  store i32 1, i32* %63, align 4, !tbaa !5
  %67 = add nuw nsw i64 %50, 1
  %68 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %67
  store i32 %58, i32* %68, align 4, !tbaa !5
  %69 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %67
  store double %53, double* %69, align 8, !tbaa !1
  %70 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %67
  store i32 %58, i32* %70, align 4, !tbaa !5
  %71 = icmp eq i64 %67, 11
  br i1 %71, label %72, label %49

; <label>:72:                                     ; preds = %66
  %73 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 1), align 4, !tbaa !5
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %33, i64 %74
  store i32 0, i32* %75, align 4, !tbaa !5
  %76 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 2), align 8, !tbaa !5
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %33, i64 %77
  store i32 0, i32* %78, align 4, !tbaa !5
  %79 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 3), align 4, !tbaa !5
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %33, i64 %80
  store i32 0, i32* %81, align 4, !tbaa !5
  %82 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 4), align 16, !tbaa !5
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %33, i64 %83
  store i32 0, i32* %84, align 4, !tbaa !5
  %85 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 5), align 4, !tbaa !5
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %33, i64 %86
  store i32 0, i32* %87, align 4, !tbaa !5
  %88 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 6), align 8, !tbaa !5
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %33, i64 %89
  store i32 0, i32* %90, align 4, !tbaa !5
  %91 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 7), align 4, !tbaa !5
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %33, i64 %92
  store i32 0, i32* %93, align 4, !tbaa !5
  %94 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 8), align 16, !tbaa !5
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %33, i64 %95
  store i32 0, i32* %96, align 4, !tbaa !5
  %97 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 9), align 4, !tbaa !5
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %33, i64 %98
  store i32 0, i32* %99, align 4, !tbaa !5
  %100 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 10), align 8, !tbaa !5
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %33, i64 %101
  store i32 0, i32* %102, align 4, !tbaa !5
  %103 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 11), align 4, !tbaa !5
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %33, i64 %104
  store i32 0, i32* %105, align 4, !tbaa !5
  %106 = load i32, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 1), align 4, !tbaa !5
  %107 = icmp eq i32 %106, %41
  br i1 %107, label %108, label %109

; <label>:108:                                    ; preds = %72
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 1), align 8, !tbaa !1
  br label %109

; <label>:109:                                    ; preds = %108, %72
  %110 = phi i32 [ 1, %108 ], [ 0, %72 ]
  %111 = load i32, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 2), align 8, !tbaa !5
  %112 = icmp eq i32 %111, %41
  br i1 %112, label %521, label %522

; <label>:113:                                    ; preds = %567
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 12), align 16, !tbaa !1
  store i32 %41, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 12), align 16, !tbaa !5
  br label %114

; <label>:114:                                    ; preds = %567, %566, %113
  %115 = phi i64 [ 12, %113 ], [ 11, %567 ], [ 11, %566 ]
  br label %116

; <label>:116:                                    ; preds = %159, %114
  %117 = phi i32 [ %161, %159 ], [ %106, %114 ]
  %118 = phi i64 [ %157, %159 ], [ 1, %114 ]
  %119 = phi i32 [ %156, %159 ], [ %40, %114 ]
  %120 = icmp slt i32 %117, %18
  %121 = icmp sgt i32 %117, %20
  %122 = or i1 %120, %121
  br i1 %122, label %155, label %123

; <label>:123:                                    ; preds = %116
  %124 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %118
  %125 = load double, double* %124, align 8, !tbaa !1
  %126 = fmul fast double %125, %42
  br label %127

; <label>:127:                                    ; preds = %150, %123
  %128 = phi i64 [ %152, %150 ], [ 1, %123 ]
  %129 = phi i32 [ %151, %150 ], [ %119, %123 ]
  %130 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %128
  %131 = load i32, i32* %130, align 4, !tbaa !5
  %132 = icmp slt i32 %131, %14
  %133 = icmp sgt i32 %131, %16
  %134 = or i1 %132, %133
  br i1 %134, label %150, label %135

; <label>:135:                                    ; preds = %127
  %136 = add nsw i32 %129, 1
  %137 = icmp slt i32 %129, %12
  br i1 %137, label %142, label %138

; <label>:138:                                    ; preds = %135
  %139 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.32, i64 0, i64 0)) #7
  %140 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 %136, i32 %12) #7
  %141 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %41) #7
  tail call void @exit(i32 1) #8
  unreachable

; <label>:142:                                    ; preds = %135
  %143 = sext i32 %136 to i64
  %144 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @acol, i64 0, i64 %143
  store i32 %117, i32* %144, align 4, !tbaa !5
  %145 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 %143
  store i32 %131, i32* %145, align 4, !tbaa !5
  %146 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %128
  %147 = load double, double* %146, align 8, !tbaa !1
  %148 = fmul fast double %126, %147
  %149 = getelementptr inbounds [2198001 x double], [2198001 x double]* @aelt, i64 0, i64 %143
  store double %148, double* %149, align 8, !tbaa !1
  br label %150

; <label>:150:                                    ; preds = %142, %127
  %151 = phi i32 [ %136, %142 ], [ %129, %127 ]
  %152 = add nuw nsw i64 %128, 1
  %153 = icmp slt i64 %128, %115
  br i1 %153, label %127, label %154

; <label>:154:                                    ; preds = %150
  br label %155

; <label>:155:                                    ; preds = %154, %116
  %156 = phi i32 [ %119, %116 ], [ %151, %154 ]
  %157 = add nuw nsw i64 %118, 1
  %158 = icmp slt i64 %118, %115
  br i1 %158, label %159, label %162

; <label>:159:                                    ; preds = %155
  %160 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %157
  %161 = load i32, i32* %160, align 4, !tbaa !5
  br label %116

; <label>:162:                                    ; preds = %155
  %163 = fmul fast double %42, %23
  %164 = add nuw nsw i32 %41, 1
  %165 = icmp slt i32 %41, %10
  br i1 %165, label %39, label %34

; <label>:166:                                    ; preds = %38, %185
  %167 = phi i32 [ %187, %185 ], [ %14, %38 ]
  %168 = phi i32 [ %186, %185 ], [ %36, %38 ]
  %169 = icmp slt i32 %167, %18
  %170 = icmp sgt i32 %167, %20
  %171 = or i1 %169, %170
  br i1 %171, label %185, label %172

; <label>:172:                                    ; preds = %166
  %173 = add nsw i32 %168, 1
  %174 = icmp slt i32 %168, %12
  br i1 %174, label %180, label %175

; <label>:175:                                    ; preds = %172
  %176 = add nsw i32 %167, %10
  %177 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.32, i64 0, i64 0)) #7
  %178 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 %173, i32 %12) #7
  %179 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %176) #7
  tail call void @exit(i32 1) #8
  unreachable

; <label>:180:                                    ; preds = %172
  %181 = sext i32 %173 to i64
  %182 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @acol, i64 0, i64 %181
  store i32 %167, i32* %182, align 4, !tbaa !5
  %183 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 %181
  store i32 %167, i32* %183, align 4, !tbaa !5
  %184 = getelementptr inbounds [2198001 x double], [2198001 x double]* @aelt, i64 0, i64 %181
  store double -1.990000e+01, double* %184, align 8, !tbaa !1
  br label %185

; <label>:185:                                    ; preds = %180, %166
  %186 = phi i32 [ %173, %180 ], [ %168, %166 ]
  %187 = add nuw nsw i32 %167, 1
  %188 = icmp slt i32 %167, %16
  br i1 %188, label %166, label %189

; <label>:189:                                    ; preds = %185
  br label %190

; <label>:190:                                    ; preds = %189, %35
  %191 = phi i32 [ %36, %35 ], [ %186, %189 ]
  %192 = zext i32 %10 to i64
  %193 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %192
  %194 = sub nsw i32 %16, %14
  %195 = add nsw i32 %194, 1
  br i1 %9, label %196, label %201

; <label>:196:                                    ; preds = %190
  %197 = add nsw i32 %10, -1
  %198 = zext i32 %197 to i64
  %199 = shl nuw nsw i64 %198, 2
  %200 = add nuw nsw i64 %199, 4
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1) to i8*), i8 0, i64 %200, i32 4, i1 false) #7
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 1) to i8*), i8 0, i64 %200, i32 4, i1 false) #7
  br label %201

; <label>:201:                                    ; preds = %190, %196
  %202 = or i32 %10, 1
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %203
  store i32 0, i32* %204, align 4, !tbaa !5
  %205 = icmp slt i32 %191, 1
  br i1 %205, label %246, label %206

; <label>:206:                                    ; preds = %201
  %207 = sext i1 %13 to i32
  %208 = add nsw i32 %207, 2
  %209 = add i32 %191, 1
  %210 = zext i32 %209 to i64
  %211 = and i64 %210, 1
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %221

; <label>:213:                                    ; preds = %206
  br label %214

; <label>:214:                                    ; preds = %213
  %215 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 1), align 4, !tbaa !5
  %216 = add i32 %208, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4, !tbaa !5
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4, !tbaa !5
  br label %221

; <label>:221:                                    ; preds = %214, %206
  %222 = phi i64 [ 1, %206 ], [ 2, %214 ]
  %223 = icmp eq i32 %209, 2
  br i1 %223, label %245, label %224

; <label>:224:                                    ; preds = %221
  br label %225

; <label>:225:                                    ; preds = %225, %224
  %226 = phi i64 [ %222, %224 ], [ %242, %225 ]
  %227 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4, !tbaa !5
  %229 = add i32 %208, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4, !tbaa !5
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4, !tbaa !5
  %234 = add nuw nsw i64 %226, 1
  %235 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4, !tbaa !5
  %237 = add i32 %208, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4, !tbaa !5
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4, !tbaa !5
  %242 = add nsw i64 %226, 2
  %243 = icmp eq i64 %242, %210
  br i1 %243, label %244, label %225

; <label>:244:                                    ; preds = %225
  br label %245

; <label>:245:                                    ; preds = %221, %244
  br label %246

; <label>:246:                                    ; preds = %245, %201
  store i32 1, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  %247 = icmp slt i32 %194, 0
  br i1 %247, label %265, label %248

; <label>:248:                                    ; preds = %246
  %249 = add nsw i32 %194, 2
  %250 = sext i32 %249 to i64
  br label %254

; <label>:251:                                    ; preds = %254
  %252 = load i32, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 0), align 16, !tbaa !5
  %253 = zext i32 %195 to i64
  br label %290

; <label>:254:                                    ; preds = %254, %248
  %255 = phi i32 [ 1, %248 ], [ %259, %254 ]
  %256 = phi i64 [ 2, %248 ], [ %260, %254 ]
  %257 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4, !tbaa !5
  %259 = add nsw i32 %258, %255
  store i32 %259, i32* %257, align 4, !tbaa !5
  %260 = add nuw nsw i64 %256, 1
  %261 = icmp slt i64 %256, %250
  br i1 %261, label %254, label %251

; <label>:262:                                    ; preds = %297, %290
  %263 = icmp eq i64 %293, %253
  br i1 %263, label %264, label %290

; <label>:264:                                    ; preds = %262
  br label %265

; <label>:265:                                    ; preds = %264, %246
  br i1 %205, label %311, label %266

; <label>:266:                                    ; preds = %265
  %267 = xor i32 %14, 1
  %268 = add i32 %191, 1
  %269 = zext i32 %268 to i64
  %270 = and i64 %269, 1
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %286

; <label>:272:                                    ; preds = %266
  br label %273

; <label>:273:                                    ; preds = %272
  %274 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 1), align 4, !tbaa !5
  %275 = add i32 %274, %267
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %276
  %278 = load i32, i32* %277, align 4, !tbaa !5
  %279 = load i64, i64* bitcast (double* getelementptr inbounds ([2198001 x double], [2198001 x double]* @aelt, i64 0, i64 1) to i64*), align 8, !tbaa !1
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %280
  %282 = bitcast double* %281 to i64*
  store i64 %279, i64* %282, align 8, !tbaa !1
  %283 = load i32, i32* getelementptr inbounds ([2198001 x i32], [2198001 x i32]* @acol, i64 0, i64 1), align 4, !tbaa !5
  %284 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %280
  store i32 %283, i32* %284, align 4, !tbaa !5
  %285 = add nsw i32 %278, 1
  store i32 %285, i32* %277, align 4, !tbaa !5
  br label %286

; <label>:286:                                    ; preds = %273, %266
  %287 = phi i64 [ 1, %266 ], [ 2, %273 ]
  %288 = icmp eq i32 %268, 2
  br i1 %288, label %310, label %289

; <label>:289:                                    ; preds = %286
  br label %315

; <label>:290:                                    ; preds = %262, %251
  %291 = phi i32 [ %252, %251 ], [ %295, %262 ]
  %292 = phi i64 [ 0, %251 ], [ %293, %262 ]
  %293 = add nuw nsw i64 %292, 1
  %294 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4, !tbaa !5
  %296 = icmp slt i32 %291, %295
  br i1 %296, label %297, label %262

; <label>:297:                                    ; preds = %290
  %298 = sext i32 %291 to i64
  %299 = getelementptr [2198001 x double], [2198001 x double]* @a, i64 0, i64 %298
  %300 = bitcast double* %299 to i8*
  %301 = add i32 %291, 1
  %302 = icmp sgt i32 %295, %301
  %303 = select i1 %302, i32 %295, i32 %301
  %304 = xor i32 %291, -1
  %305 = add i32 %303, %304
  %306 = zext i32 %305 to i64
  %307 = shl nuw nsw i64 %306, 3
  %308 = add nuw nsw i64 %307, 8
  tail call void @llvm.memset.p0i8.i64(i8* %300, i8 0, i64 %308, i32 8, i1 false) #7
  br label %262

; <label>:309:                                    ; preds = %315
  br label %310

; <label>:310:                                    ; preds = %286, %309
  br label %311

; <label>:311:                                    ; preds = %310, %265
  %312 = icmp sgt i32 %194, -1
  br i1 %312, label %313, label %361

; <label>:313:                                    ; preds = %311
  %314 = sext i32 %195 to i64
  br label %352

; <label>:315:                                    ; preds = %315, %289
  %316 = phi i64 [ %287, %289 ], [ %350, %315 ]
  %317 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 %316
  %318 = load i32, i32* %317, align 4, !tbaa !5
  %319 = add i32 %318, %267
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %320
  %322 = load i32, i32* %321, align 4, !tbaa !5
  %323 = getelementptr inbounds [2198001 x double], [2198001 x double]* @aelt, i64 0, i64 %316
  %324 = bitcast double* %323 to i64*
  %325 = load i64, i64* %324, align 8, !tbaa !1
  %326 = sext i32 %322 to i64
  %327 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %326
  %328 = bitcast double* %327 to i64*
  store i64 %325, i64* %328, align 8, !tbaa !1
  %329 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @acol, i64 0, i64 %316
  %330 = load i32, i32* %329, align 4, !tbaa !5
  %331 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %326
  store i32 %330, i32* %331, align 4, !tbaa !5
  %332 = add nsw i32 %322, 1
  store i32 %332, i32* %321, align 4, !tbaa !5
  %333 = add nuw nsw i64 %316, 1
  %334 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 %333
  %335 = load i32, i32* %334, align 4, !tbaa !5
  %336 = add i32 %335, %267
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %337
  %339 = load i32, i32* %338, align 4, !tbaa !5
  %340 = getelementptr inbounds [2198001 x double], [2198001 x double]* @aelt, i64 0, i64 %333
  %341 = bitcast double* %340 to i64*
  %342 = load i64, i64* %341, align 8, !tbaa !1
  %343 = sext i32 %339 to i64
  %344 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %343
  %345 = bitcast double* %344 to i64*
  store i64 %342, i64* %345, align 8, !tbaa !1
  %346 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @acol, i64 0, i64 %333
  %347 = load i32, i32* %346, align 4, !tbaa !5
  %348 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %343
  store i32 %347, i32* %348, align 4, !tbaa !5
  %349 = add nsw i32 %339, 1
  store i32 %349, i32* %338, align 4, !tbaa !5
  %350 = add nsw i64 %316, 2
  %351 = icmp eq i64 %350, %269
  br i1 %351, label %309, label %315

; <label>:352:                                    ; preds = %352, %313
  %353 = phi i64 [ %314, %313 ], [ %358, %352 ]
  %354 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %353
  %355 = load i32, i32* %354, align 4, !tbaa !5
  %356 = add nuw nsw i64 %353, 1
  %357 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %356
  store i32 %355, i32* %357, align 4, !tbaa !5
  %358 = add nsw i64 %353, -1
  %359 = icmp sgt i64 %353, 1
  br i1 %359, label %352, label %360

; <label>:360:                                    ; preds = %352
  br label %361

; <label>:361:                                    ; preds = %360, %311
  store i32 1, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  br i1 %9, label %362, label %369

; <label>:362:                                    ; preds = %361
  %363 = add nsw i32 %10, -1
  %364 = zext i32 %363 to i64
  %365 = shl nuw nsw i64 %364, 3
  %366 = add nuw nsw i64 %365, 8
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 1) to i8*), i8 0, i64 %366, i32 8, i1 false) #7
  %367 = shl nuw nsw i64 %364, 2
  %368 = add nuw nsw i64 %367, 4
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 1) to i8*), i8 0, i64 %368, i32 4, i1 false) #7
  br label %369

; <label>:369:                                    ; preds = %361, %362
  br i1 %247, label %472, label %370

; <label>:370:                                    ; preds = %369
  %371 = sub nsw i32 2, %14
  %372 = or i32 %371, %16
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %193, i64 1
  br label %375

; <label>:375:                                    ; preds = %467, %370
  %376 = phi i64 [ 1, %370 ], [ %379, %467 ]
  %377 = phi i32 [ 0, %370 ], [ %468, %467 ]
  %378 = phi i32 [ 1, %370 ], [ %381, %467 ]
  %379 = add nuw nsw i64 %376, 1
  %380 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %379
  %381 = load i32, i32* %380, align 4, !tbaa !5
  %382 = icmp slt i32 %378, %381
  br i1 %382, label %383, label %467

; <label>:383:                                    ; preds = %375
  %384 = sext i32 %378 to i64
  %385 = sext i32 %381 to i64
  br label %415

; <label>:386:                                    ; preds = %435
  %387 = icmp slt i32 %436, 1
  br i1 %387, label %467, label %388

; <label>:388:                                    ; preds = %386
  %389 = add i32 %436, 1
  %390 = zext i32 %389 to i64
  %391 = and i64 %390, 1
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %408

; <label>:393:                                    ; preds = %388
  br label %394

; <label>:394:                                    ; preds = %393
  %395 = load i32, i32* %374, align 4, !tbaa !5
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %396
  store i32 0, i32* %397, align 4, !tbaa !5
  %398 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %396
  %399 = load double, double* %398, align 8, !tbaa !1
  store double 0.000000e+00, double* %398, align 8, !tbaa !1
  %400 = fcmp fast une double %399, 0.000000e+00
  br i1 %400, label %401, label %406

; <label>:401:                                    ; preds = %394
  %402 = add nsw i32 %377, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %403
  store double %399, double* %404, align 8, !tbaa !1
  %405 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %403
  store i32 %395, i32* %405, align 4, !tbaa !5
  br label %406

; <label>:406:                                    ; preds = %401, %394
  %407 = phi i32 [ %402, %401 ], [ %377, %394 ]
  br label %408

; <label>:408:                                    ; preds = %388, %406
  %409 = phi i32 [ %407, %406 ], [ undef, %388 ]
  %410 = phi i64 [ 2, %406 ], [ 1, %388 ]
  %411 = phi i32 [ %407, %406 ], [ %377, %388 ]
  br label %412

; <label>:412:                                    ; preds = %408
  %413 = icmp eq i32 %389, 2
  br i1 %413, label %465, label %414

; <label>:414:                                    ; preds = %412
  br label %439

; <label>:415:                                    ; preds = %435, %383
  %416 = phi i64 [ %384, %383 ], [ %437, %435 ]
  %417 = phi i32 [ 0, %383 ], [ %436, %435 ]
  %418 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %416
  %419 = load i32, i32* %418, align 4, !tbaa !5
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %420
  %422 = load double, double* %421, align 8, !tbaa !1
  %423 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %416
  %424 = load double, double* %423, align 8, !tbaa !1
  %425 = fadd fast double %424, %422
  store double %425, double* %421, align 8, !tbaa !1
  %426 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %420
  %427 = load i32, i32* %426, align 4, !tbaa !5
  %428 = icmp eq i32 %427, 0
  %429 = fcmp fast une double %425, 0.000000e+00
  %430 = and i1 %429, %428
  br i1 %430, label %431, label %435

; <label>:431:                                    ; preds = %415
  store i32 1, i32* %426, align 4, !tbaa !5
  %432 = add nsw i32 %417, 1
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %193, i64 %433
  store i32 %419, i32* %434, align 4, !tbaa !5
  br label %435

; <label>:435:                                    ; preds = %431, %415
  %436 = phi i32 [ %432, %431 ], [ %417, %415 ]
  %437 = add nsw i64 %416, 1
  %438 = icmp eq i64 %437, %385
  br i1 %438, label %386, label %415

; <label>:439:                                    ; preds = %1047, %414
  %440 = phi i64 [ %410, %414 ], [ %1049, %1047 ]
  %441 = phi i32 [ %411, %414 ], [ %1048, %1047 ]
  %442 = getelementptr inbounds i32, i32* %193, i64 %440
  %443 = load i32, i32* %442, align 4, !tbaa !5
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %444
  store i32 0, i32* %445, align 4, !tbaa !5
  %446 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %444
  %447 = load double, double* %446, align 8, !tbaa !1
  store double 0.000000e+00, double* %446, align 8, !tbaa !1
  %448 = fcmp fast une double %447, 0.000000e+00
  br i1 %448, label %449, label %454

; <label>:449:                                    ; preds = %439
  %450 = add nsw i32 %441, 1
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %451
  store double %447, double* %452, align 8, !tbaa !1
  %453 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %451
  store i32 %443, i32* %453, align 4, !tbaa !5
  br label %454

; <label>:454:                                    ; preds = %449, %439
  %455 = phi i32 [ %450, %449 ], [ %441, %439 ]
  %456 = add nuw nsw i64 %440, 1
  %457 = getelementptr inbounds i32, i32* %193, i64 %456
  %458 = load i32, i32* %457, align 4, !tbaa !5
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %459
  store i32 0, i32* %460, align 4, !tbaa !5
  %461 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %459
  %462 = load double, double* %461, align 8, !tbaa !1
  store double 0.000000e+00, double* %461, align 8, !tbaa !1
  %463 = fcmp fast une double %462, 0.000000e+00
  br i1 %463, label %1042, label %1047

; <label>:464:                                    ; preds = %1047
  br label %465

; <label>:465:                                    ; preds = %412, %464
  %466 = phi i32 [ %409, %412 ], [ %1048, %464 ]
  br label %467

; <label>:467:                                    ; preds = %465, %386, %375
  %468 = phi i32 [ %377, %386 ], [ %377, %375 ], [ %466, %465 ]
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %380, align 4, !tbaa !5
  %470 = icmp eq i64 %379, %373
  br i1 %470, label %471, label %375

; <label>:471:                                    ; preds = %467
  br label %472

; <label>:472:                                    ; preds = %471, %369
  %473 = load i1, i1* @lastrow, align 4
  %474 = load i1, i1* @firstrow, align 4
  %475 = sext i1 %474 to i32
  %476 = select i1 %473, i32 14001, i32 1
  %477 = add nsw i32 %476, %475
  %478 = icmp slt i32 %477, 1
  br i1 %478, label %480, label %515

; <label>:479:                                    ; preds = %570
  br label %480

; <label>:480:                                    ; preds = %479, %472
  br label %481

; <label>:481:                                    ; preds = %481, %480
  %482 = phi i64 [ 0, %480 ], [ %512, %481 ]
  %483 = or i64 %482, 1
  %484 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %483
  %485 = bitcast double* %484 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %485, align 8, !tbaa !1
  %486 = getelementptr double, double* %484, i64 2
  %487 = bitcast double* %486 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %487, align 8, !tbaa !1
  %488 = add nuw nsw i64 %482, 4
  %489 = or i64 %488, 1
  %490 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %489
  %491 = bitcast double* %490 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %491, align 8, !tbaa !1
  %492 = getelementptr double, double* %490, i64 2
  %493 = bitcast double* %492 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %493, align 8, !tbaa !1
  %494 = add nsw i64 %482, 8
  %495 = or i64 %494, 1
  %496 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %495
  %497 = bitcast double* %496 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %497, align 8, !tbaa !1
  %498 = getelementptr double, double* %496, i64 2
  %499 = bitcast double* %498 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %499, align 8, !tbaa !1
  %500 = add nsw i64 %482, 12
  %501 = or i64 %500, 1
  %502 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %501
  %503 = bitcast double* %502 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %503, align 8, !tbaa !1
  %504 = getelementptr double, double* %502, i64 2
  %505 = bitcast double* %504 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %505, align 8, !tbaa !1
  %506 = add nsw i64 %482, 16
  %507 = or i64 %506, 1
  %508 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %507
  %509 = bitcast double* %508 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %509, align 8, !tbaa !1
  %510 = getelementptr double, double* %508, i64 2
  %511 = bitcast double* %510 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %511, align 8, !tbaa !1
  %512 = add nsw i64 %482, 20
  %513 = icmp eq i64 %512, 14000
  br i1 %513, label %514, label %481, !llvm.loop !7

; <label>:514:                                    ; preds = %481
  br label %658

; <label>:515:                                    ; preds = %472
  %516 = load i1, i1* @firstcol, align 4
  %517 = sext i1 %516 to i32
  %518 = sext i32 %477 to i64
  %519 = insertelement <4 x i32> undef, i32 %517, i32 0
  %520 = shufflevector <4 x i32> %519, <4 x i32> undef, <4 x i32> zeroinitializer
  br label %572

; <label>:521:                                    ; preds = %109
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 2), align 16, !tbaa !1
  br label %522

; <label>:522:                                    ; preds = %521, %109
  %523 = phi i32 [ 1, %521 ], [ %110, %109 ]
  %524 = load i32, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 3), align 4, !tbaa !5
  %525 = icmp eq i32 %524, %41
  br i1 %525, label %526, label %527

; <label>:526:                                    ; preds = %522
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 3), align 8, !tbaa !1
  br label %527

; <label>:527:                                    ; preds = %526, %522
  %528 = phi i32 [ 1, %526 ], [ %523, %522 ]
  %529 = load i32, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 4), align 16, !tbaa !5
  %530 = icmp eq i32 %529, %41
  br i1 %530, label %531, label %532

; <label>:531:                                    ; preds = %527
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 4), align 16, !tbaa !1
  br label %532

; <label>:532:                                    ; preds = %531, %527
  %533 = phi i32 [ 1, %531 ], [ %528, %527 ]
  %534 = load i32, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 5), align 4, !tbaa !5
  %535 = icmp eq i32 %534, %41
  br i1 %535, label %536, label %537

; <label>:536:                                    ; preds = %532
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 5), align 8, !tbaa !1
  br label %537

; <label>:537:                                    ; preds = %536, %532
  %538 = phi i32 [ 1, %536 ], [ %533, %532 ]
  %539 = load i32, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 6), align 8, !tbaa !5
  %540 = icmp eq i32 %539, %41
  br i1 %540, label %541, label %542

; <label>:541:                                    ; preds = %537
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 6), align 16, !tbaa !1
  br label %542

; <label>:542:                                    ; preds = %541, %537
  %543 = phi i32 [ 1, %541 ], [ %538, %537 ]
  %544 = load i32, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 7), align 4, !tbaa !5
  %545 = icmp eq i32 %544, %41
  br i1 %545, label %546, label %547

; <label>:546:                                    ; preds = %542
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 7), align 8, !tbaa !1
  br label %547

; <label>:547:                                    ; preds = %546, %542
  %548 = phi i32 [ 1, %546 ], [ %543, %542 ]
  %549 = load i32, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 8), align 16, !tbaa !5
  %550 = icmp eq i32 %549, %41
  br i1 %550, label %551, label %552

; <label>:551:                                    ; preds = %547
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 8), align 16, !tbaa !1
  br label %552

; <label>:552:                                    ; preds = %551, %547
  %553 = phi i32 [ 1, %551 ], [ %548, %547 ]
  %554 = load i32, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 9), align 4, !tbaa !5
  %555 = icmp eq i32 %554, %41
  br i1 %555, label %556, label %557

; <label>:556:                                    ; preds = %552
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 9), align 8, !tbaa !1
  br label %557

; <label>:557:                                    ; preds = %556, %552
  %558 = phi i32 [ 1, %556 ], [ %553, %552 ]
  %559 = load i32, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 10), align 8, !tbaa !5
  %560 = icmp eq i32 %559, %41
  br i1 %560, label %561, label %562

; <label>:561:                                    ; preds = %557
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 10), align 16, !tbaa !1
  br label %562

; <label>:562:                                    ; preds = %561, %557
  %563 = phi i32 [ 1, %561 ], [ %558, %557 ]
  %564 = load i32, i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 11), align 4, !tbaa !5
  %565 = icmp eq i32 %564, %41
  br i1 %565, label %566, label %567

; <label>:566:                                    ; preds = %562
  store double 5.000000e-01, double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 11), align 8, !tbaa !1
  br label %114

; <label>:567:                                    ; preds = %562
  %568 = icmp eq i32 %563, 0
  br i1 %568, label %113, label %114

; <label>:569:                                    ; preds = %649
  br label %570

; <label>:570:                                    ; preds = %569, %645, %572
  %571 = icmp slt i64 %574, %518
  br i1 %571, label %572, label %479

; <label>:572:                                    ; preds = %570, %515
  %573 = phi i32 [ %577, %570 ], [ 1, %515 ]
  %574 = phi i64 [ %575, %570 ], [ 1, %515 ]
  %575 = add nuw nsw i64 %574, 1
  %576 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %575
  %577 = load i32, i32* %576, align 4, !tbaa !5
  %578 = icmp slt i32 %573, %577
  br i1 %578, label %579, label %570

; <label>:579:                                    ; preds = %572
  %580 = sext i32 %573 to i64
  %581 = sext i32 %577 to i64
  %582 = sext i32 %577 to i64
  %583 = sub nsw i64 %582, %580
  %584 = icmp ult i64 %583, 8
  br i1 %584, label %647, label %585

; <label>:585:                                    ; preds = %579
  %586 = and i64 %583, -8
  %587 = icmp eq i64 %586, 0
  %588 = add nsw i64 %580, %586
  br i1 %587, label %647, label %589

; <label>:589:                                    ; preds = %585
  %590 = add nsw i64 %586, -8
  %591 = lshr exact i64 %590, 3
  %592 = and i64 %591, 1
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %608

; <label>:594:                                    ; preds = %589
  br label %595

; <label>:595:                                    ; preds = %594
  %596 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %580
  %597 = bitcast i32* %596 to <4 x i32>*
  %598 = load <4 x i32>, <4 x i32>* %597, align 4, !tbaa !5
  %599 = getelementptr i32, i32* %596, i64 4
  %600 = bitcast i32* %599 to <4 x i32>*
  %601 = load <4 x i32>, <4 x i32>* %600, align 4, !tbaa !5
  %602 = add <4 x i32> %598, <i32 1, i32 1, i32 1, i32 1>
  %603 = add <4 x i32> %601, <i32 1, i32 1, i32 1, i32 1>
  %604 = add <4 x i32> %602, %520
  %605 = add <4 x i32> %603, %520
  %606 = bitcast i32* %596 to <4 x i32>*
  store <4 x i32> %604, <4 x i32>* %606, align 4, !tbaa !5
  %607 = bitcast i32* %599 to <4 x i32>*
  store <4 x i32> %605, <4 x i32>* %607, align 4, !tbaa !5
  br label %608

; <label>:608:                                    ; preds = %589, %595
  %609 = phi i64 [ 8, %595 ], [ 0, %589 ]
  br label %610

; <label>:610:                                    ; preds = %608
  %611 = icmp eq i64 %591, 0
  br i1 %611, label %645, label %612

; <label>:612:                                    ; preds = %610
  br label %613

; <label>:613:                                    ; preds = %613, %612
  %614 = phi i64 [ %609, %612 ], [ %642, %613 ]
  %615 = add i64 %580, %614
  %616 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %615
  %617 = bitcast i32* %616 to <4 x i32>*
  %618 = load <4 x i32>, <4 x i32>* %617, align 4, !tbaa !5
  %619 = getelementptr i32, i32* %616, i64 4
  %620 = bitcast i32* %619 to <4 x i32>*
  %621 = load <4 x i32>, <4 x i32>* %620, align 4, !tbaa !5
  %622 = add <4 x i32> %618, <i32 1, i32 1, i32 1, i32 1>
  %623 = add <4 x i32> %621, <i32 1, i32 1, i32 1, i32 1>
  %624 = add <4 x i32> %622, %520
  %625 = add <4 x i32> %623, %520
  %626 = bitcast i32* %616 to <4 x i32>*
  store <4 x i32> %624, <4 x i32>* %626, align 4, !tbaa !5
  %627 = bitcast i32* %619 to <4 x i32>*
  store <4 x i32> %625, <4 x i32>* %627, align 4, !tbaa !5
  %628 = add i64 %614, 8
  %629 = add i64 %580, %628
  %630 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %629
  %631 = bitcast i32* %630 to <4 x i32>*
  %632 = load <4 x i32>, <4 x i32>* %631, align 4, !tbaa !5
  %633 = getelementptr i32, i32* %630, i64 4
  %634 = bitcast i32* %633 to <4 x i32>*
  %635 = load <4 x i32>, <4 x i32>* %634, align 4, !tbaa !5
  %636 = add <4 x i32> %632, <i32 1, i32 1, i32 1, i32 1>
  %637 = add <4 x i32> %635, <i32 1, i32 1, i32 1, i32 1>
  %638 = add <4 x i32> %636, %520
  %639 = add <4 x i32> %637, %520
  %640 = bitcast i32* %630 to <4 x i32>*
  store <4 x i32> %638, <4 x i32>* %640, align 4, !tbaa !5
  %641 = bitcast i32* %633 to <4 x i32>*
  store <4 x i32> %639, <4 x i32>* %641, align 4, !tbaa !5
  %642 = add i64 %614, 16
  %643 = icmp eq i64 %642, %586
  br i1 %643, label %644, label %613, !llvm.loop !10

; <label>:644:                                    ; preds = %613
  br label %645

; <label>:645:                                    ; preds = %610, %644
  %646 = icmp eq i64 %583, %586
  br i1 %646, label %570, label %647

; <label>:647:                                    ; preds = %645, %585, %579
  %648 = phi i64 [ %580, %585 ], [ %580, %579 ], [ %588, %645 ]
  br label %649

; <label>:649:                                    ; preds = %647, %649
  %650 = phi i64 [ %655, %649 ], [ %648, %647 ]
  %651 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %650
  %652 = load i32, i32* %651, align 4, !tbaa !5
  %653 = add i32 %652, 1
  %654 = add i32 %653, %517
  store i32 %654, i32* %651, align 4, !tbaa !5
  %655 = add nsw i64 %650, 1
  %656 = icmp slt i64 %655, %581
  br i1 %656, label %649, label %569, !llvm.loop !11

; <label>:657:                                    ; preds = %658
  call fastcc void @conj_grad(double* nonnull %3)
  br label %819

; <label>:658:                                    ; preds = %514
  store double 1.000000e+00, double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 14001), align 8, !tbaa !1
  %659 = load i1, i1* @lastcol, align 4
  %660 = load i1, i1* @firstcol, align 4
  %661 = sext i1 %660 to i32
  %662 = select i1 %659, i32 14001, i32 1
  %663 = add nsw i32 %662, %661
  %664 = icmp slt i32 %663, 1
  br i1 %664, label %657, label %665

; <label>:665:                                    ; preds = %658
  %666 = add nsw i32 %663, -1
  %667 = zext i32 %666 to i64
  %668 = shl nuw nsw i64 %667, 3
  %669 = add nuw nsw i64 %668, 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 1) to i8*), i8 0, i64 %669, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1) to i8*), i8 0, i64 %669, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to i8*), i8 0, i64 %669, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to i8*), i8 0, i64 %669, i32 8, i1 false)
  call fastcc void @conj_grad(double* nonnull %3)
  %670 = sext i32 %663 to i64
  %671 = icmp ult i32 %663, 4
  br i1 %671, label %733, label %672

; <label>:672:                                    ; preds = %665
  %673 = and i64 %670, -4
  %674 = icmp eq i64 %673, 0
  %675 = or i64 %673, 1
  br i1 %674, label %733, label %676

; <label>:676:                                    ; preds = %672
  %677 = add nsw i64 %673, -4
  %678 = lshr exact i64 %677, 2
  %679 = and i64 %678, 1
  %680 = icmp eq i64 %679, 0
  br i1 %680, label %681, label %687

; <label>:681:                                    ; preds = %676
  br label %682

; <label>:682:                                    ; preds = %681
  %683 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %684 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %685 = fmul fast <2 x double> %683, %683
  %686 = fmul fast <2 x double> %684, %684
  br label %687

; <label>:687:                                    ; preds = %682, %676
  %688 = phi <2 x double> [ undef, %676 ], [ %685, %682 ]
  %689 = phi <2 x double> [ undef, %676 ], [ %686, %682 ]
  %690 = phi i64 [ 0, %676 ], [ 4, %682 ]
  %691 = phi <2 x double> [ zeroinitializer, %676 ], [ %685, %682 ]
  %692 = phi <2 x double> [ zeroinitializer, %676 ], [ %686, %682 ]
  %693 = icmp eq i64 %678, 0
  br i1 %693, label %725, label %694

; <label>:694:                                    ; preds = %687
  br label %695

; <label>:695:                                    ; preds = %695, %694
  %696 = phi i64 [ %690, %694 ], [ %722, %695 ]
  %697 = phi <2 x double> [ %691, %694 ], [ %720, %695 ]
  %698 = phi <2 x double> [ %692, %694 ], [ %721, %695 ]
  %699 = or i64 %696, 1
  %700 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %699
  %701 = bitcast double* %700 to <2 x double>*
  %702 = load <2 x double>, <2 x double>* %701, align 8, !tbaa !1
  %703 = getelementptr double, double* %700, i64 2
  %704 = bitcast double* %703 to <2 x double>*
  %705 = load <2 x double>, <2 x double>* %704, align 8, !tbaa !1
  %706 = fmul fast <2 x double> %702, %702
  %707 = fmul fast <2 x double> %705, %705
  %708 = fadd fast <2 x double> %706, %697
  %709 = fadd fast <2 x double> %707, %698
  %710 = add i64 %696, 4
  %711 = or i64 %710, 1
  %712 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %711
  %713 = bitcast double* %712 to <2 x double>*
  %714 = load <2 x double>, <2 x double>* %713, align 8, !tbaa !1
  %715 = getelementptr double, double* %712, i64 2
  %716 = bitcast double* %715 to <2 x double>*
  %717 = load <2 x double>, <2 x double>* %716, align 8, !tbaa !1
  %718 = fmul fast <2 x double> %714, %714
  %719 = fmul fast <2 x double> %717, %717
  %720 = fadd fast <2 x double> %718, %708
  %721 = fadd fast <2 x double> %719, %709
  %722 = add i64 %696, 8
  %723 = icmp eq i64 %722, %673
  br i1 %723, label %724, label %695, !llvm.loop !13

; <label>:724:                                    ; preds = %695
  br label %725

; <label>:725:                                    ; preds = %687, %724
  %726 = phi <2 x double> [ %688, %687 ], [ %720, %724 ]
  %727 = phi <2 x double> [ %689, %687 ], [ %721, %724 ]
  %728 = fadd fast <2 x double> %727, %726
  %729 = shufflevector <2 x double> %728, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %730 = fadd fast <2 x double> %728, %729
  %731 = extractelement <2 x double> %730, i32 0
  %732 = icmp eq i64 %670, %673
  br i1 %732, label %746, label %733

; <label>:733:                                    ; preds = %725, %672, %665
  %734 = phi i64 [ 1, %672 ], [ 1, %665 ], [ %675, %725 ]
  %735 = phi double [ 0.000000e+00, %672 ], [ 0.000000e+00, %665 ], [ %731, %725 ]
  br label %736

; <label>:736:                                    ; preds = %733, %736
  %737 = phi i64 [ %743, %736 ], [ %734, %733 ]
  %738 = phi double [ %742, %736 ], [ %735, %733 ]
  %739 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %737
  %740 = load double, double* %739, align 8, !tbaa !1
  %741 = fmul fast double %740, %740
  %742 = fadd fast double %741, %738
  %743 = add nuw nsw i64 %737, 1
  %744 = icmp slt i64 %737, %670
  br i1 %744, label %736, label %745, !llvm.loop !14

; <label>:745:                                    ; preds = %736
  br label %746

; <label>:746:                                    ; preds = %745, %725
  %747 = phi double [ %731, %725 ], [ %742, %745 ]
  %748 = tail call fast double @llvm.sqrt.f64(double %747)
  %749 = fdiv fast double 1.000000e+00, %748
  br i1 %664, label %819, label %750

; <label>:750:                                    ; preds = %746
  %751 = sext i32 %663 to i64
  %752 = icmp ult i32 %663, 4
  br i1 %752, label %808, label %753

; <label>:753:                                    ; preds = %750
  %754 = and i64 %670, -4
  %755 = icmp eq i64 %754, 0
  %756 = or i64 %754, 1
  br i1 %755, label %808, label %757

; <label>:757:                                    ; preds = %753
  %758 = insertelement <2 x double> undef, double %749, i32 0
  %759 = shufflevector <2 x double> %758, <2 x double> undef, <2 x i32> zeroinitializer
  %760 = add nsw i64 %754, -4
  %761 = lshr exact i64 %760, 2
  %762 = and i64 %761, 1
  %763 = icmp eq i64 %762, 0
  br i1 %763, label %764, label %770

; <label>:764:                                    ; preds = %757
  br label %765

; <label>:765:                                    ; preds = %764
  %766 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %767 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %768 = fmul fast <2 x double> %766, %759
  %769 = fmul fast <2 x double> %767, %759
  store <2 x double> %768, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  store <2 x double> %769, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  br label %770

; <label>:770:                                    ; preds = %765, %757
  %771 = phi i64 [ 0, %757 ], [ 4, %765 ]
  %772 = icmp eq i64 %761, 0
  br i1 %772, label %806, label %773

; <label>:773:                                    ; preds = %770
  br label %774

; <label>:774:                                    ; preds = %774, %773
  %775 = phi i64 [ %771, %773 ], [ %803, %774 ]
  %776 = or i64 %775, 1
  %777 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %776
  %778 = bitcast double* %777 to <2 x double>*
  %779 = load <2 x double>, <2 x double>* %778, align 8, !tbaa !1
  %780 = getelementptr double, double* %777, i64 2
  %781 = bitcast double* %780 to <2 x double>*
  %782 = load <2 x double>, <2 x double>* %781, align 8, !tbaa !1
  %783 = fmul fast <2 x double> %779, %759
  %784 = fmul fast <2 x double> %782, %759
  %785 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %776
  %786 = bitcast double* %785 to <2 x double>*
  store <2 x double> %783, <2 x double>* %786, align 8, !tbaa !1
  %787 = getelementptr double, double* %785, i64 2
  %788 = bitcast double* %787 to <2 x double>*
  store <2 x double> %784, <2 x double>* %788, align 8, !tbaa !1
  %789 = add i64 %775, 4
  %790 = or i64 %789, 1
  %791 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %790
  %792 = bitcast double* %791 to <2 x double>*
  %793 = load <2 x double>, <2 x double>* %792, align 8, !tbaa !1
  %794 = getelementptr double, double* %791, i64 2
  %795 = bitcast double* %794 to <2 x double>*
  %796 = load <2 x double>, <2 x double>* %795, align 8, !tbaa !1
  %797 = fmul fast <2 x double> %793, %759
  %798 = fmul fast <2 x double> %796, %759
  %799 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %790
  %800 = bitcast double* %799 to <2 x double>*
  store <2 x double> %797, <2 x double>* %800, align 8, !tbaa !1
  %801 = getelementptr double, double* %799, i64 2
  %802 = bitcast double* %801 to <2 x double>*
  store <2 x double> %798, <2 x double>* %802, align 8, !tbaa !1
  %803 = add i64 %775, 8
  %804 = icmp eq i64 %803, %754
  br i1 %804, label %805, label %774, !llvm.loop !15

; <label>:805:                                    ; preds = %774
  br label %806

; <label>:806:                                    ; preds = %770, %805
  %807 = icmp eq i64 %670, %754
  br i1 %807, label %819, label %808

; <label>:808:                                    ; preds = %806, %753, %750
  %809 = phi i64 [ 1, %753 ], [ 1, %750 ], [ %756, %806 ]
  br label %810

; <label>:810:                                    ; preds = %808, %810
  %811 = phi i64 [ %816, %810 ], [ %809, %808 ]
  %812 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %811
  %813 = load double, double* %812, align 8, !tbaa !1
  %814 = fmul fast double %813, %749
  %815 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %811
  store double %814, double* %815, align 8, !tbaa !1
  %816 = add nuw nsw i64 %811, 1
  %817 = icmp slt i64 %811, %751
  br i1 %817, label %810, label %818, !llvm.loop !16

; <label>:818:                                    ; preds = %810
  br label %819

; <label>:819:                                    ; preds = %818, %806, %657, %746
  br label %820

; <label>:820:                                    ; preds = %820, %819
  %821 = phi i64 [ 0, %819 ], [ %851, %820 ]
  %822 = or i64 %821, 1
  %823 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %822
  %824 = bitcast double* %823 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %824, align 8, !tbaa !1
  %825 = getelementptr double, double* %823, i64 2
  %826 = bitcast double* %825 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %826, align 8, !tbaa !1
  %827 = add nuw nsw i64 %821, 4
  %828 = or i64 %827, 1
  %829 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %828
  %830 = bitcast double* %829 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %830, align 8, !tbaa !1
  %831 = getelementptr double, double* %829, i64 2
  %832 = bitcast double* %831 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %832, align 8, !tbaa !1
  %833 = add nsw i64 %821, 8
  %834 = or i64 %833, 1
  %835 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %834
  %836 = bitcast double* %835 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %836, align 8, !tbaa !1
  %837 = getelementptr double, double* %835, i64 2
  %838 = bitcast double* %837 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %838, align 8, !tbaa !1
  %839 = add nsw i64 %821, 12
  %840 = or i64 %839, 1
  %841 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %840
  %842 = bitcast double* %841 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %842, align 8, !tbaa !1
  %843 = getelementptr double, double* %841, i64 2
  %844 = bitcast double* %843 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %844, align 8, !tbaa !1
  %845 = add nsw i64 %821, 16
  %846 = or i64 %845, 1
  %847 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %846
  %848 = bitcast double* %847 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %848, align 8, !tbaa !1
  %849 = getelementptr double, double* %847, i64 2
  %850 = bitcast double* %849 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %850, align 8, !tbaa !1
  %851 = add nsw i64 %821, 20
  %852 = icmp eq i64 %851, 14000
  br i1 %852, label %853, label %820, !llvm.loop !17

; <label>:853:                                    ; preds = %820
  br label %854

; <label>:854:                                    ; preds = %853
  store double 1.000000e+00, double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 14001), align 8, !tbaa !1
  tail call void @timer_clear(i32 1) #7
  tail call void @timer_start(i32 1) #7
  %855 = load i1, i1* @lastcol, align 4
  %856 = load i1, i1* @firstcol, align 4
  br label %857

; <label>:857:                                    ; preds = %1020, %854
  %858 = phi i1 [ %856, %854 ], [ %945, %1020 ]
  %859 = phi i1 [ %855, %854 ], [ %944, %1020 ]
  %860 = phi i32 [ 1, %854 ], [ %1021, %1020 ]
  call fastcc void @conj_grad(double* nonnull %3)
  %861 = sext i1 %858 to i32
  %862 = select i1 %859, i32 14001, i32 1
  %863 = add nsw i32 %862, %861
  %864 = icmp slt i32 %863, 1
  br i1 %864, label %931, label %865

; <label>:865:                                    ; preds = %857
  %866 = sext i32 %863 to i64
  %867 = icmp ult i32 %863, 4
  br i1 %867, label %912, label %868

; <label>:868:                                    ; preds = %865
  %869 = and i64 %866, -4
  %870 = icmp eq i64 %869, 0
  %871 = or i64 %869, 1
  br i1 %870, label %912, label %872

; <label>:872:                                    ; preds = %868
  br label %873

; <label>:873:                                    ; preds = %872, %873
  %874 = phi i64 [ %900, %873 ], [ 0, %872 ]
  %875 = phi <2 x double> [ %898, %873 ], [ zeroinitializer, %872 ]
  %876 = phi <2 x double> [ %899, %873 ], [ zeroinitializer, %872 ]
  %877 = phi <2 x double> [ %894, %873 ], [ zeroinitializer, %872 ]
  %878 = phi <2 x double> [ %895, %873 ], [ zeroinitializer, %872 ]
  %879 = or i64 %874, 1
  %880 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %879
  %881 = bitcast double* %880 to <2 x double>*
  %882 = load <2 x double>, <2 x double>* %881, align 8, !tbaa !1
  %883 = getelementptr double, double* %880, i64 2
  %884 = bitcast double* %883 to <2 x double>*
  %885 = load <2 x double>, <2 x double>* %884, align 8, !tbaa !1
  %886 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %879
  %887 = bitcast double* %886 to <2 x double>*
  %888 = load <2 x double>, <2 x double>* %887, align 8, !tbaa !1
  %889 = getelementptr double, double* %886, i64 2
  %890 = bitcast double* %889 to <2 x double>*
  %891 = load <2 x double>, <2 x double>* %890, align 8, !tbaa !1
  %892 = fmul fast <2 x double> %888, %882
  %893 = fmul fast <2 x double> %891, %885
  %894 = fadd fast <2 x double> %892, %877
  %895 = fadd fast <2 x double> %893, %878
  %896 = fmul fast <2 x double> %888, %888
  %897 = fmul fast <2 x double> %891, %891
  %898 = fadd fast <2 x double> %896, %875
  %899 = fadd fast <2 x double> %897, %876
  %900 = add i64 %874, 4
  %901 = icmp eq i64 %900, %869
  br i1 %901, label %902, label %873, !llvm.loop !18

; <label>:902:                                    ; preds = %873
  %903 = fadd fast <2 x double> %895, %894
  %904 = shufflevector <2 x double> %903, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %905 = fadd fast <2 x double> %903, %904
  %906 = extractelement <2 x double> %905, i32 0
  %907 = fadd fast <2 x double> %899, %898
  %908 = shufflevector <2 x double> %907, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %909 = fadd fast <2 x double> %907, %908
  %910 = extractelement <2 x double> %909, i32 0
  %911 = icmp eq i64 %866, %869
  br i1 %911, label %931, label %912

; <label>:912:                                    ; preds = %902, %868, %865
  %913 = phi i64 [ 1, %868 ], [ 1, %865 ], [ %871, %902 ]
  %914 = phi double [ 0.000000e+00, %868 ], [ 0.000000e+00, %865 ], [ %910, %902 ]
  %915 = phi double [ 0.000000e+00, %868 ], [ 0.000000e+00, %865 ], [ %906, %902 ]
  br label %916

; <label>:916:                                    ; preds = %912, %916
  %917 = phi i64 [ %928, %916 ], [ %913, %912 ]
  %918 = phi double [ %927, %916 ], [ %914, %912 ]
  %919 = phi double [ %925, %916 ], [ %915, %912 ]
  %920 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %917
  %921 = load double, double* %920, align 8, !tbaa !1
  %922 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %917
  %923 = load double, double* %922, align 8, !tbaa !1
  %924 = fmul fast double %923, %921
  %925 = fadd fast double %924, %919
  %926 = fmul fast double %923, %923
  %927 = fadd fast double %926, %918
  %928 = add nuw nsw i64 %917, 1
  %929 = icmp slt i64 %917, %866
  br i1 %929, label %916, label %930, !llvm.loop !19

; <label>:930:                                    ; preds = %916
  br label %931

; <label>:931:                                    ; preds = %930, %902, %857
  %932 = phi double [ 0.000000e+00, %857 ], [ %906, %902 ], [ %925, %930 ]
  %933 = phi double [ 0.000000e+00, %857 ], [ %910, %902 ], [ %927, %930 ]
  %934 = tail call fast double @llvm.sqrt.f64(double %933)
  %935 = fdiv fast double 1.000000e+00, %934
  %936 = fdiv fast double 1.000000e+00, %932
  %937 = fadd fast double %936, 2.000000e+01
  %938 = icmp eq i32 %860, 1
  br i1 %938, label %939, label %941

; <label>:939:                                    ; preds = %931
  %940 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @str.30, i64 0, i64 0))
  br label %941

; <label>:941:                                    ; preds = %939, %931
  %942 = load double, double* %3, align 8, !tbaa !1
  %943 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %860, double %942, double %937)
  %944 = load i1, i1* @lastcol, align 4
  %945 = load i1, i1* @firstcol, align 4
  %946 = sext i1 %945 to i32
  %947 = select i1 %944, i32 14001, i32 1
  %948 = add nsw i32 %947, %946
  %949 = icmp slt i32 %948, 1
  br i1 %949, label %1020, label %950

; <label>:950:                                    ; preds = %941
  %951 = sext i32 %948 to i64
  %952 = icmp ult i32 %948, 4
  br i1 %952, label %1009, label %953

; <label>:953:                                    ; preds = %950
  %954 = and i64 %951, -4
  %955 = icmp eq i64 %954, 0
  %956 = or i64 %954, 1
  br i1 %955, label %1009, label %957

; <label>:957:                                    ; preds = %953
  %958 = insertelement <2 x double> undef, double %935, i32 0
  %959 = shufflevector <2 x double> %958, <2 x double> undef, <2 x i32> zeroinitializer
  %960 = add nsw i64 %954, -4
  %961 = lshr exact i64 %960, 2
  %962 = and i64 %961, 1
  %963 = icmp eq i64 %962, 0
  br i1 %963, label %964, label %970

; <label>:964:                                    ; preds = %957
  br label %965

; <label>:965:                                    ; preds = %964
  %966 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %967 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %968 = fmul fast <2 x double> %966, %959
  %969 = fmul fast <2 x double> %967, %959
  store <2 x double> %968, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  store <2 x double> %969, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  br label %970

; <label>:970:                                    ; preds = %957, %965
  %971 = phi i64 [ 4, %965 ], [ 0, %957 ]
  br label %972

; <label>:972:                                    ; preds = %970
  %973 = icmp eq i64 %961, 0
  br i1 %973, label %1007, label %974

; <label>:974:                                    ; preds = %972
  br label %975

; <label>:975:                                    ; preds = %975, %974
  %976 = phi i64 [ %971, %974 ], [ %1004, %975 ]
  %977 = or i64 %976, 1
  %978 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %977
  %979 = bitcast double* %978 to <2 x double>*
  %980 = load <2 x double>, <2 x double>* %979, align 8, !tbaa !1
  %981 = getelementptr double, double* %978, i64 2
  %982 = bitcast double* %981 to <2 x double>*
  %983 = load <2 x double>, <2 x double>* %982, align 8, !tbaa !1
  %984 = fmul fast <2 x double> %980, %959
  %985 = fmul fast <2 x double> %983, %959
  %986 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %977
  %987 = bitcast double* %986 to <2 x double>*
  store <2 x double> %984, <2 x double>* %987, align 8, !tbaa !1
  %988 = getelementptr double, double* %986, i64 2
  %989 = bitcast double* %988 to <2 x double>*
  store <2 x double> %985, <2 x double>* %989, align 8, !tbaa !1
  %990 = add i64 %976, 4
  %991 = or i64 %990, 1
  %992 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %991
  %993 = bitcast double* %992 to <2 x double>*
  %994 = load <2 x double>, <2 x double>* %993, align 8, !tbaa !1
  %995 = getelementptr double, double* %992, i64 2
  %996 = bitcast double* %995 to <2 x double>*
  %997 = load <2 x double>, <2 x double>* %996, align 8, !tbaa !1
  %998 = fmul fast <2 x double> %994, %959
  %999 = fmul fast <2 x double> %997, %959
  %1000 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %991
  %1001 = bitcast double* %1000 to <2 x double>*
  store <2 x double> %998, <2 x double>* %1001, align 8, !tbaa !1
  %1002 = getelementptr double, double* %1000, i64 2
  %1003 = bitcast double* %1002 to <2 x double>*
  store <2 x double> %999, <2 x double>* %1003, align 8, !tbaa !1
  %1004 = add i64 %976, 8
  %1005 = icmp eq i64 %1004, %954
  br i1 %1005, label %1006, label %975, !llvm.loop !20

; <label>:1006:                                   ; preds = %975
  br label %1007

; <label>:1007:                                   ; preds = %972, %1006
  %1008 = icmp eq i64 %951, %954
  br i1 %1008, label %1020, label %1009

; <label>:1009:                                   ; preds = %1007, %953, %950
  %1010 = phi i64 [ 1, %953 ], [ 1, %950 ], [ %956, %1007 ]
  br label %1011

; <label>:1011:                                   ; preds = %1009, %1011
  %1012 = phi i64 [ %1017, %1011 ], [ %1010, %1009 ]
  %1013 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %1012
  %1014 = load double, double* %1013, align 8, !tbaa !1
  %1015 = fmul fast double %1014, %935
  %1016 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %1012
  store double %1015, double* %1016, align 8, !tbaa !1
  %1017 = add nuw nsw i64 %1012, 1
  %1018 = icmp slt i64 %1012, %951
  br i1 %1018, label %1011, label %1019, !llvm.loop !21

; <label>:1019:                                   ; preds = %1011
  br label %1020

; <label>:1020:                                   ; preds = %1019, %1007, %941
  %1021 = add nuw nsw i32 %860, 1
  %1022 = icmp eq i32 %1021, 16
  br i1 %1022, label %1023, label %857

; <label>:1023:                                   ; preds = %1020
  tail call void @timer_stop(i32 1) #7
  %1024 = tail call fast double @timer_read(i32 1) #7
  %1025 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.27, i64 0, i64 0))
  %1026 = fadd fast double %936, 0x4006F54752F138A0
  %1027 = tail call fast double @fabs(double %1026) #4
  %1028 = fcmp fast ugt double %1027, 1.000000e-10
  br i1 %1028, label %1033, label %1029

; <label>:1029:                                   ; preds = %1023
  %1030 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.29, i64 0, i64 0))
  %1031 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), double %937)
  %1032 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), double %1026)
  br label %1037

; <label>:1033:                                   ; preds = %1023
  %1034 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.28, i64 0, i64 0))
  %1035 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), double %937)
  %1036 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), double 0x4031215715A1D8EC)
  br label %1037

; <label>:1037:                                   ; preds = %1029, %1033
  %1038 = phi i32 [ 1, %1029 ], [ 0, %1033 ]
  %1039 = fcmp fast une double %1024, 0.000000e+00
  %1040 = fdiv fast double 1.496460e+03, %1024
  %1041 = select i1 %1039, double %1040, double 0.000000e+00
  tail call void @c_print_results(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8 signext 65, i32 14000, i32 0, i32 0, i32 15, i32 1, double %1024, double %1041, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %1038, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #7
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #7
  ret i32 0

; <label>:1042:                                   ; preds = %454
  %1043 = add nsw i32 %455, 1
  %1044 = sext i32 %1043 to i64
  %1045 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %1044
  store double %462, double* %1045, align 8, !tbaa !1
  %1046 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %1044
  store i32 %458, i32* %1046, align 4, !tbaa !5
  br label %1047

; <label>:1047:                                   ; preds = %1042, %454
  %1048 = phi i32 [ %1043, %1042 ], [ %455, %454 ]
  %1049 = add nsw i64 %440, 2
  %1050 = icmp eq i64 %1049, %390
  br i1 %1050, label %464, label %439
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

declare double @randlc(double*, double) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @conj_grad(double* nocapture) unnamed_addr #0 {
  %2 = load i1, i1* @naa, align 4
  %3 = select i1 %2, i64 112008, i64 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 1) to i8*), i8 0, i64 %3, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1) to i8*), i8 0, i64 %3, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to i8*), i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 1) to i8*), i64 %3, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to i8*), i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 1) to i8*), i64 %3, i32 8, i1 false)
  %4 = load i1, i1* @lastcol, align 4
  %5 = load i1, i1* @firstcol, align 4
  %6 = sext i1 %5 to i32
  %7 = select i1 %4, i32 14001, i32 1
  %8 = add nsw i32 %7, %6
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %78, label %10

; <label>:10:                                     ; preds = %1
  %11 = sext i32 %8 to i64
  %12 = icmp ult i32 %8, 4
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %69, %16, %10
  %14 = phi i64 [ 1, %16 ], [ 1, %10 ], [ %19, %69 ]
  %15 = phi double [ 0.000000e+00, %16 ], [ 0.000000e+00, %10 ], [ %75, %69 ]
  br label %394

; <label>:16:                                     ; preds = %10
  %17 = and i64 %11, -4
  %18 = icmp eq i64 %17, 0
  %19 = or i64 %17, 1
  br i1 %18, label %13, label %20

; <label>:20:                                     ; preds = %16
  %21 = add nsw i64 %17, -4
  %22 = lshr exact i64 %21, 2
  %23 = and i64 %22, 1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %20
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %28 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %29 = fmul fast <2 x double> %27, %27
  %30 = fmul fast <2 x double> %28, %28
  br label %31

; <label>:31:                                     ; preds = %26, %20
  %32 = phi <2 x double> [ undef, %20 ], [ %29, %26 ]
  %33 = phi <2 x double> [ undef, %20 ], [ %30, %26 ]
  %34 = phi i64 [ 0, %20 ], [ 4, %26 ]
  %35 = phi <2 x double> [ zeroinitializer, %20 ], [ %29, %26 ]
  %36 = phi <2 x double> [ zeroinitializer, %20 ], [ %30, %26 ]
  %37 = icmp eq i64 %22, 0
  br i1 %37, label %69, label %38

; <label>:38:                                     ; preds = %31
  br label %39

; <label>:39:                                     ; preds = %39, %38
  %40 = phi i64 [ %34, %38 ], [ %66, %39 ]
  %41 = phi <2 x double> [ %35, %38 ], [ %64, %39 ]
  %42 = phi <2 x double> [ %36, %38 ], [ %65, %39 ]
  %43 = or i64 %40, 1
  %44 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %43
  %45 = bitcast double* %44 to <2 x double>*
  %46 = load <2 x double>, <2 x double>* %45, align 8, !tbaa !1
  %47 = getelementptr double, double* %44, i64 2
  %48 = bitcast double* %47 to <2 x double>*
  %49 = load <2 x double>, <2 x double>* %48, align 8, !tbaa !1
  %50 = fmul fast <2 x double> %46, %46
  %51 = fmul fast <2 x double> %49, %49
  %52 = fadd fast <2 x double> %50, %41
  %53 = fadd fast <2 x double> %51, %42
  %54 = add i64 %40, 4
  %55 = or i64 %54, 1
  %56 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %55
  %57 = bitcast double* %56 to <2 x double>*
  %58 = load <2 x double>, <2 x double>* %57, align 8, !tbaa !1
  %59 = getelementptr double, double* %56, i64 2
  %60 = bitcast double* %59 to <2 x double>*
  %61 = load <2 x double>, <2 x double>* %60, align 8, !tbaa !1
  %62 = fmul fast <2 x double> %58, %58
  %63 = fmul fast <2 x double> %61, %61
  %64 = fadd fast <2 x double> %62, %52
  %65 = fadd fast <2 x double> %63, %53
  %66 = add i64 %40, 8
  %67 = icmp eq i64 %66, %17
  br i1 %67, label %68, label %39, !llvm.loop !22

; <label>:68:                                     ; preds = %39
  br label %69

; <label>:69:                                     ; preds = %31, %68
  %70 = phi <2 x double> [ %32, %31 ], [ %64, %68 ]
  %71 = phi <2 x double> [ %33, %31 ], [ %65, %68 ]
  %72 = fadd fast <2 x double> %71, %70
  %73 = shufflevector <2 x double> %72, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %74 = fadd fast <2 x double> %72, %73
  %75 = extractelement <2 x double> %74, i32 0
  %76 = icmp eq i64 %11, %17
  br i1 %76, label %78, label %13

; <label>:77:                                     ; preds = %394
  br label %78

; <label>:78:                                     ; preds = %77, %69, %1
  %79 = phi double [ 0.000000e+00, %1 ], [ %75, %69 ], [ %400, %77 ]
  %80 = load i1, i1* @lastrow, align 4
  %81 = load i1, i1* @firstrow, align 4
  %82 = sext i1 %81 to i32
  %83 = select i1 %80, i32 14001, i32 1
  %84 = add nsw i32 %83, %82
  %85 = icmp slt i32 %84, 1
  %86 = load i32, i32* @conj_grad.callcount, align 4, !tbaa !5
  br i1 %85, label %115, label %87

; <label>:87:                                     ; preds = %78
  %88 = sext i32 %84 to i64
  %89 = sext i32 %8 to i64
  %90 = load i32, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  %91 = add nsw i64 %89, -4
  %92 = lshr i64 %91, 2
  %93 = add nuw nsw i64 %92, 1
  %94 = icmp ult i32 %8, 4
  %95 = icmp ult i32 %8, 4
  %96 = icmp ult i32 %8, 4
  %97 = and i64 %89, -4
  %98 = icmp eq i64 %97, 0
  %99 = or i64 %97, 1
  %100 = and i64 %93, 1
  %101 = icmp eq i64 %100, 0
  %102 = icmp eq i64 %92, 0
  %103 = icmp eq i64 %89, %97
  %104 = and i64 %89, -4
  %105 = icmp eq i64 %104, 0
  %106 = or i64 %104, 1
  %107 = icmp eq i64 %89, %104
  %108 = and i64 %89, -4
  %109 = icmp eq i64 %108, 0
  %110 = or i64 %108, 1
  %111 = and i64 %93, 1
  %112 = icmp eq i64 %111, 0
  %113 = icmp eq i64 %92, 0
  %114 = icmp eq i64 %89, %108
  br label %403

; <label>:115:                                    ; preds = %78
  %116 = sext i32 %8 to i64
  %117 = add nsw i64 %116, -4
  %118 = lshr i64 %117, 2
  %119 = add nuw nsw i64 %118, 1
  %120 = icmp ult i32 %8, 4
  %121 = icmp ult i32 %8, 4
  %122 = icmp ult i32 %8, 4
  %123 = and i64 %116, -4
  %124 = icmp eq i64 %123, 0
  %125 = or i64 %123, 1
  %126 = and i64 %119, 1
  %127 = icmp eq i64 %126, 0
  %128 = icmp eq i64 %118, 0
  %129 = icmp eq i64 %116, %123
  %130 = and i64 %116, -4
  %131 = icmp eq i64 %130, 0
  %132 = or i64 %130, 1
  %133 = icmp eq i64 %116, %130
  %134 = and i64 %116, -4
  %135 = icmp eq i64 %134, 0
  %136 = or i64 %134, 1
  %137 = and i64 %119, 1
  %138 = icmp eq i64 %137, 0
  %139 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 1) to <2 x double>*), align 8
  %140 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 3) to <2 x double>*), align 8
  %141 = icmp eq i64 %118, 0
  %142 = icmp eq i64 %116, %134
  br label %143

; <label>:143:                                    ; preds = %390, %115
  %144 = phi i32 [ %392, %390 ], [ 1, %115 ]
  %145 = phi double [ %391, %390 ], [ %79, %115 ]
  br i1 %9, label %390, label %146

; <label>:146:                                    ; preds = %143
  br i1 %120, label %212, label %147

; <label>:147:                                    ; preds = %146
  br i1 %135, label %212, label %148

; <label>:148:                                    ; preds = %147
  br i1 %138, label %155, label %149

; <label>:149:                                    ; preds = %148
  br label %150

; <label>:150:                                    ; preds = %149
  %151 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %152 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %153 = fmul fast <2 x double> %139, %151
  %154 = fmul fast <2 x double> %140, %152
  br label %155

; <label>:155:                                    ; preds = %148, %150
  %156 = phi <2 x double> [ %153, %150 ], [ undef, %148 ]
  %157 = phi <2 x double> [ %154, %150 ], [ undef, %148 ]
  %158 = phi i64 [ 4, %150 ], [ 0, %148 ]
  %159 = phi <2 x double> [ %153, %150 ], [ zeroinitializer, %148 ]
  %160 = phi <2 x double> [ %154, %150 ], [ zeroinitializer, %148 ]
  br label %161

; <label>:161:                                    ; preds = %155
  br i1 %141, label %205, label %162

; <label>:162:                                    ; preds = %161
  br label %163

; <label>:163:                                    ; preds = %163, %162
  %164 = phi i64 [ %158, %162 ], [ %202, %163 ]
  %165 = phi <2 x double> [ %159, %162 ], [ %200, %163 ]
  %166 = phi <2 x double> [ %160, %162 ], [ %201, %163 ]
  %167 = or i64 %164, 1
  %168 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %167
  %169 = bitcast double* %168 to <2 x double>*
  %170 = load <2 x double>, <2 x double>* %169, align 8, !tbaa !1
  %171 = getelementptr double, double* %168, i64 2
  %172 = bitcast double* %171 to <2 x double>*
  %173 = load <2 x double>, <2 x double>* %172, align 8, !tbaa !1
  %174 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %167
  %175 = bitcast double* %174 to <2 x double>*
  %176 = load <2 x double>, <2 x double>* %175, align 8, !tbaa !1
  %177 = getelementptr double, double* %174, i64 2
  %178 = bitcast double* %177 to <2 x double>*
  %179 = load <2 x double>, <2 x double>* %178, align 8, !tbaa !1
  %180 = fmul fast <2 x double> %176, %170
  %181 = fmul fast <2 x double> %179, %173
  %182 = fadd fast <2 x double> %180, %165
  %183 = fadd fast <2 x double> %181, %166
  %184 = add i64 %164, 4
  %185 = or i64 %184, 1
  %186 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %185
  %187 = bitcast double* %186 to <2 x double>*
  %188 = load <2 x double>, <2 x double>* %187, align 8, !tbaa !1
  %189 = getelementptr double, double* %186, i64 2
  %190 = bitcast double* %189 to <2 x double>*
  %191 = load <2 x double>, <2 x double>* %190, align 8, !tbaa !1
  %192 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %185
  %193 = bitcast double* %192 to <2 x double>*
  %194 = load <2 x double>, <2 x double>* %193, align 8, !tbaa !1
  %195 = getelementptr double, double* %192, i64 2
  %196 = bitcast double* %195 to <2 x double>*
  %197 = load <2 x double>, <2 x double>* %196, align 8, !tbaa !1
  %198 = fmul fast <2 x double> %194, %188
  %199 = fmul fast <2 x double> %197, %191
  %200 = fadd fast <2 x double> %198, %182
  %201 = fadd fast <2 x double> %199, %183
  %202 = add i64 %164, 8
  %203 = icmp eq i64 %202, %134
  br i1 %203, label %204, label %163, !llvm.loop !23

; <label>:204:                                    ; preds = %163
  br label %205

; <label>:205:                                    ; preds = %161, %204
  %206 = phi <2 x double> [ %156, %161 ], [ %200, %204 ]
  %207 = phi <2 x double> [ %157, %161 ], [ %201, %204 ]
  %208 = fadd fast <2 x double> %207, %206
  %209 = shufflevector <2 x double> %208, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %210 = fadd fast <2 x double> %208, %209
  %211 = extractelement <2 x double> %210, i32 0
  br i1 %142, label %227, label %212

; <label>:212:                                    ; preds = %205, %147, %146
  %213 = phi i64 [ 1, %147 ], [ 1, %146 ], [ %136, %205 ]
  %214 = phi double [ 0.000000e+00, %147 ], [ 0.000000e+00, %146 ], [ %211, %205 ]
  br label %215

; <label>:215:                                    ; preds = %212, %215
  %216 = phi i64 [ %224, %215 ], [ %213, %212 ]
  %217 = phi double [ %223, %215 ], [ %214, %212 ]
  %218 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %216
  %219 = load double, double* %218, align 8, !tbaa !1
  %220 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %216
  %221 = load double, double* %220, align 8, !tbaa !1
  %222 = fmul fast double %221, %219
  %223 = fadd fast double %222, %217
  %224 = add nuw nsw i64 %216, 1
  %225 = icmp slt i64 %216, %116
  br i1 %225, label %215, label %226, !llvm.loop !24

; <label>:226:                                    ; preds = %215
  br label %227

; <label>:227:                                    ; preds = %226, %205
  %228 = phi double [ %211, %205 ], [ %223, %226 ]
  %229 = fdiv fast double %145, %228
  br i1 %9, label %390, label %230

; <label>:230:                                    ; preds = %227
  br i1 %121, label %287, label %231

; <label>:231:                                    ; preds = %230
  br i1 %131, label %287, label %232

; <label>:232:                                    ; preds = %231
  %233 = insertelement <2 x double> undef, double %229, i32 0
  %234 = shufflevector <2 x double> %233, <2 x double> undef, <2 x i32> zeroinitializer
  br label %235

; <label>:235:                                    ; preds = %235, %232
  %236 = phi i64 [ 0, %232 ], [ %280, %235 ]
  %237 = phi <2 x double> [ zeroinitializer, %232 ], [ %278, %235 ]
  %238 = phi <2 x double> [ zeroinitializer, %232 ], [ %279, %235 ]
  %239 = or i64 %236, 1
  %240 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %239
  %241 = bitcast double* %240 to <2 x double>*
  %242 = load <2 x double>, <2 x double>* %241, align 8, !tbaa !1
  %243 = getelementptr double, double* %240, i64 2
  %244 = bitcast double* %243 to <2 x double>*
  %245 = load <2 x double>, <2 x double>* %244, align 8, !tbaa !1
  %246 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %239
  %247 = bitcast double* %246 to <2 x double>*
  %248 = load <2 x double>, <2 x double>* %247, align 8, !tbaa !1
  %249 = getelementptr double, double* %246, i64 2
  %250 = bitcast double* %249 to <2 x double>*
  %251 = load <2 x double>, <2 x double>* %250, align 8, !tbaa !1
  %252 = fmul fast <2 x double> %248, %234
  %253 = fmul fast <2 x double> %251, %234
  %254 = fadd fast <2 x double> %252, %242
  %255 = fadd fast <2 x double> %253, %245
  %256 = bitcast double* %240 to <2 x double>*
  store <2 x double> %254, <2 x double>* %256, align 8, !tbaa !1
  %257 = bitcast double* %243 to <2 x double>*
  store <2 x double> %255, <2 x double>* %257, align 8, !tbaa !1
  %258 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %239
  %259 = bitcast double* %258 to <2 x double>*
  %260 = load <2 x double>, <2 x double>* %259, align 8, !tbaa !1
  %261 = getelementptr double, double* %258, i64 2
  %262 = bitcast double* %261 to <2 x double>*
  %263 = load <2 x double>, <2 x double>* %262, align 8, !tbaa !1
  %264 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %239
  %265 = bitcast double* %264 to <2 x double>*
  %266 = load <2 x double>, <2 x double>* %265, align 8, !tbaa !1
  %267 = getelementptr double, double* %264, i64 2
  %268 = bitcast double* %267 to <2 x double>*
  %269 = load <2 x double>, <2 x double>* %268, align 8, !tbaa !1
  %270 = fmul fast <2 x double> %266, %234
  %271 = fmul fast <2 x double> %269, %234
  %272 = fsub fast <2 x double> %260, %270
  %273 = fsub fast <2 x double> %263, %271
  %274 = bitcast double* %258 to <2 x double>*
  store <2 x double> %272, <2 x double>* %274, align 8, !tbaa !1
  %275 = bitcast double* %261 to <2 x double>*
  store <2 x double> %273, <2 x double>* %275, align 8, !tbaa !1
  %276 = fmul fast <2 x double> %272, %272
  %277 = fmul fast <2 x double> %273, %273
  %278 = fadd fast <2 x double> %276, %237
  %279 = fadd fast <2 x double> %277, %238
  %280 = add i64 %236, 4
  %281 = icmp eq i64 %280, %130
  br i1 %281, label %282, label %235, !llvm.loop !25

; <label>:282:                                    ; preds = %235
  %283 = fadd fast <2 x double> %279, %278
  %284 = shufflevector <2 x double> %283, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %285 = fadd fast <2 x double> %283, %284
  %286 = extractelement <2 x double> %285, i32 0
  br i1 %133, label %310, label %287

; <label>:287:                                    ; preds = %282, %231, %230
  %288 = phi i64 [ 1, %231 ], [ 1, %230 ], [ %132, %282 ]
  %289 = phi double [ 0.000000e+00, %231 ], [ 0.000000e+00, %230 ], [ %286, %282 ]
  br label %290

; <label>:290:                                    ; preds = %287, %290
  %291 = phi i64 [ %307, %290 ], [ %288, %287 ]
  %292 = phi double [ %306, %290 ], [ %289, %287 ]
  %293 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %291
  %294 = load double, double* %293, align 8, !tbaa !1
  %295 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %291
  %296 = load double, double* %295, align 8, !tbaa !1
  %297 = fmul fast double %296, %229
  %298 = fadd fast double %297, %294
  store double %298, double* %293, align 8, !tbaa !1
  %299 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %291
  %300 = load double, double* %299, align 8, !tbaa !1
  %301 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %291
  %302 = load double, double* %301, align 8, !tbaa !1
  %303 = fmul fast double %302, %229
  %304 = fsub fast double %300, %303
  store double %304, double* %299, align 8, !tbaa !1
  %305 = fmul fast double %304, %304
  %306 = fadd fast double %305, %292
  %307 = add nuw nsw i64 %291, 1
  %308 = icmp slt i64 %291, %116
  br i1 %308, label %290, label %309, !llvm.loop !26

; <label>:309:                                    ; preds = %290
  br label %310

; <label>:310:                                    ; preds = %309, %282
  %311 = phi double [ %286, %282 ], [ %306, %309 ]
  %312 = fdiv fast double %311, %145
  br i1 %9, label %390, label %313

; <label>:313:                                    ; preds = %310
  br i1 %122, label %377, label %314

; <label>:314:                                    ; preds = %313
  br i1 %124, label %377, label %315

; <label>:315:                                    ; preds = %314
  %316 = insertelement <2 x double> undef, double %312, i32 0
  %317 = shufflevector <2 x double> %316, <2 x double> undef, <2 x i32> zeroinitializer
  br i1 %127, label %328, label %318

; <label>:318:                                    ; preds = %315
  br label %319

; <label>:319:                                    ; preds = %318
  %320 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %321 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %322 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %323 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %324 = fmul fast <2 x double> %322, %317
  %325 = fmul fast <2 x double> %323, %317
  %326 = fadd fast <2 x double> %324, %320
  %327 = fadd fast <2 x double> %325, %321
  store <2 x double> %326, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  store <2 x double> %327, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  br label %328

; <label>:328:                                    ; preds = %315, %319
  %329 = phi i64 [ 4, %319 ], [ 0, %315 ]
  br label %330

; <label>:330:                                    ; preds = %328
  br i1 %128, label %376, label %331

; <label>:331:                                    ; preds = %330
  br label %332

; <label>:332:                                    ; preds = %332, %331
  %333 = phi i64 [ %329, %331 ], [ %373, %332 ]
  %334 = or i64 %333, 1
  %335 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %334
  %336 = bitcast double* %335 to <2 x double>*
  %337 = load <2 x double>, <2 x double>* %336, align 8, !tbaa !1
  %338 = getelementptr double, double* %335, i64 2
  %339 = bitcast double* %338 to <2 x double>*
  %340 = load <2 x double>, <2 x double>* %339, align 8, !tbaa !1
  %341 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %334
  %342 = bitcast double* %341 to <2 x double>*
  %343 = load <2 x double>, <2 x double>* %342, align 8, !tbaa !1
  %344 = getelementptr double, double* %341, i64 2
  %345 = bitcast double* %344 to <2 x double>*
  %346 = load <2 x double>, <2 x double>* %345, align 8, !tbaa !1
  %347 = fmul fast <2 x double> %343, %317
  %348 = fmul fast <2 x double> %346, %317
  %349 = fadd fast <2 x double> %347, %337
  %350 = fadd fast <2 x double> %348, %340
  %351 = bitcast double* %341 to <2 x double>*
  store <2 x double> %349, <2 x double>* %351, align 8, !tbaa !1
  %352 = bitcast double* %344 to <2 x double>*
  store <2 x double> %350, <2 x double>* %352, align 8, !tbaa !1
  %353 = add i64 %333, 4
  %354 = or i64 %353, 1
  %355 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %354
  %356 = bitcast double* %355 to <2 x double>*
  %357 = load <2 x double>, <2 x double>* %356, align 8, !tbaa !1
  %358 = getelementptr double, double* %355, i64 2
  %359 = bitcast double* %358 to <2 x double>*
  %360 = load <2 x double>, <2 x double>* %359, align 8, !tbaa !1
  %361 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %354
  %362 = bitcast double* %361 to <2 x double>*
  %363 = load <2 x double>, <2 x double>* %362, align 8, !tbaa !1
  %364 = getelementptr double, double* %361, i64 2
  %365 = bitcast double* %364 to <2 x double>*
  %366 = load <2 x double>, <2 x double>* %365, align 8, !tbaa !1
  %367 = fmul fast <2 x double> %363, %317
  %368 = fmul fast <2 x double> %366, %317
  %369 = fadd fast <2 x double> %367, %357
  %370 = fadd fast <2 x double> %368, %360
  %371 = bitcast double* %361 to <2 x double>*
  store <2 x double> %369, <2 x double>* %371, align 8, !tbaa !1
  %372 = bitcast double* %364 to <2 x double>*
  store <2 x double> %370, <2 x double>* %372, align 8, !tbaa !1
  %373 = add i64 %333, 8
  %374 = icmp eq i64 %373, %123
  br i1 %374, label %375, label %332, !llvm.loop !27

; <label>:375:                                    ; preds = %332
  br label %376

; <label>:376:                                    ; preds = %330, %375
  br i1 %129, label %390, label %377

; <label>:377:                                    ; preds = %376, %314, %313
  %378 = phi i64 [ 1, %314 ], [ 1, %313 ], [ %125, %376 ]
  br label %379

; <label>:379:                                    ; preds = %377, %379
  %380 = phi i64 [ %387, %379 ], [ %378, %377 ]
  %381 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %380
  %382 = load double, double* %381, align 8, !tbaa !1
  %383 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %380
  %384 = load double, double* %383, align 8, !tbaa !1
  %385 = fmul fast double %384, %312
  %386 = fadd fast double %385, %382
  store double %386, double* %383, align 8, !tbaa !1
  %387 = add nuw nsw i64 %380, 1
  %388 = icmp slt i64 %380, %116
  br i1 %388, label %379, label %389, !llvm.loop !28

; <label>:389:                                    ; preds = %379
  br label %390

; <label>:390:                                    ; preds = %389, %376, %143, %227, %310
  %391 = phi double [ %311, %310 ], [ 0.000000e+00, %227 ], [ 0.000000e+00, %143 ], [ %311, %376 ], [ %311, %389 ]
  %392 = add nuw nsw i32 %144, 1
  %393 = icmp eq i32 %392, 26
  br i1 %393, label %406, label %143

; <label>:394:                                    ; preds = %13, %394
  %395 = phi i64 [ %401, %394 ], [ %14, %13 ]
  %396 = phi double [ %400, %394 ], [ %15, %13 ]
  %397 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %395
  %398 = load double, double* %397, align 8, !tbaa !1
  %399 = fmul fast double %398, %398
  %400 = fadd fast double %399, %396
  %401 = add nuw nsw i64 %395, 1
  %402 = icmp slt i64 %395, %11
  br i1 %402, label %394, label %77, !llvm.loop !29

; <label>:403:                                    ; preds = %723, %87
  %404 = phi i32 [ %725, %723 ], [ 1, %87 ]
  %405 = phi double [ %724, %723 ], [ %79, %87 ]
  br label %485

; <label>:406:                                    ; preds = %390
  br label %408

; <label>:407:                                    ; preds = %723
  br label %408

; <label>:408:                                    ; preds = %407, %406
  %409 = add i32 %86, 25
  store i32 %409, i32* @conj_grad.callcount, align 4, !tbaa !5
  br i1 %85, label %728, label %410

; <label>:410:                                    ; preds = %408
  %411 = sext i32 %84 to i64
  %412 = load i32, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  br label %816

; <label>:413:                                    ; preds = %544
  br i1 %9, label %723, label %414

; <label>:414:                                    ; preds = %413
  br i1 %94, label %415, label %418

; <label>:415:                                    ; preds = %478, %418, %414
  %416 = phi i64 [ 1, %418 ], [ 1, %414 ], [ %110, %478 ]
  %417 = phi double [ 0.000000e+00, %418 ], [ 0.000000e+00, %414 ], [ %484, %478 ]
  br label %548

; <label>:418:                                    ; preds = %414
  br i1 %109, label %415, label %419

; <label>:419:                                    ; preds = %418
  br i1 %112, label %428, label %420

; <label>:420:                                    ; preds = %419
  br label %421

; <label>:421:                                    ; preds = %420
  %422 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %423 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %424 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %425 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %426 = fmul fast <2 x double> %424, %422
  %427 = fmul fast <2 x double> %425, %423
  br label %428

; <label>:428:                                    ; preds = %419, %421
  %429 = phi <2 x double> [ %426, %421 ], [ undef, %419 ]
  %430 = phi <2 x double> [ %427, %421 ], [ undef, %419 ]
  %431 = phi i64 [ 4, %421 ], [ 0, %419 ]
  %432 = phi <2 x double> [ %426, %421 ], [ zeroinitializer, %419 ]
  %433 = phi <2 x double> [ %427, %421 ], [ zeroinitializer, %419 ]
  br label %434

; <label>:434:                                    ; preds = %428
  br i1 %113, label %478, label %435

; <label>:435:                                    ; preds = %434
  br label %436

; <label>:436:                                    ; preds = %436, %435
  %437 = phi i64 [ %431, %435 ], [ %475, %436 ]
  %438 = phi <2 x double> [ %432, %435 ], [ %473, %436 ]
  %439 = phi <2 x double> [ %433, %435 ], [ %474, %436 ]
  %440 = or i64 %437, 1
  %441 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %440
  %442 = bitcast double* %441 to <2 x double>*
  %443 = load <2 x double>, <2 x double>* %442, align 8, !tbaa !1
  %444 = getelementptr double, double* %441, i64 2
  %445 = bitcast double* %444 to <2 x double>*
  %446 = load <2 x double>, <2 x double>* %445, align 8, !tbaa !1
  %447 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %440
  %448 = bitcast double* %447 to <2 x double>*
  %449 = load <2 x double>, <2 x double>* %448, align 8, !tbaa !1
  %450 = getelementptr double, double* %447, i64 2
  %451 = bitcast double* %450 to <2 x double>*
  %452 = load <2 x double>, <2 x double>* %451, align 8, !tbaa !1
  %453 = fmul fast <2 x double> %449, %443
  %454 = fmul fast <2 x double> %452, %446
  %455 = fadd fast <2 x double> %453, %438
  %456 = fadd fast <2 x double> %454, %439
  %457 = add i64 %437, 4
  %458 = or i64 %457, 1
  %459 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %458
  %460 = bitcast double* %459 to <2 x double>*
  %461 = load <2 x double>, <2 x double>* %460, align 8, !tbaa !1
  %462 = getelementptr double, double* %459, i64 2
  %463 = bitcast double* %462 to <2 x double>*
  %464 = load <2 x double>, <2 x double>* %463, align 8, !tbaa !1
  %465 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %458
  %466 = bitcast double* %465 to <2 x double>*
  %467 = load <2 x double>, <2 x double>* %466, align 8, !tbaa !1
  %468 = getelementptr double, double* %465, i64 2
  %469 = bitcast double* %468 to <2 x double>*
  %470 = load <2 x double>, <2 x double>* %469, align 8, !tbaa !1
  %471 = fmul fast <2 x double> %467, %461
  %472 = fmul fast <2 x double> %470, %464
  %473 = fadd fast <2 x double> %471, %455
  %474 = fadd fast <2 x double> %472, %456
  %475 = add i64 %437, 8
  %476 = icmp eq i64 %475, %108
  br i1 %476, label %477, label %436, !llvm.loop !30

; <label>:477:                                    ; preds = %436
  br label %478

; <label>:478:                                    ; preds = %434, %477
  %479 = phi <2 x double> [ %429, %434 ], [ %473, %477 ]
  %480 = phi <2 x double> [ %430, %434 ], [ %474, %477 ]
  %481 = fadd fast <2 x double> %480, %479
  %482 = shufflevector <2 x double> %481, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %483 = fadd fast <2 x double> %481, %482
  %484 = extractelement <2 x double> %483, i32 0
  br i1 %114, label %560, label %415

; <label>:485:                                    ; preds = %544, %403
  %486 = phi i32 [ %490, %544 ], [ %90, %403 ]
  %487 = phi i64 [ %488, %544 ], [ 1, %403 ]
  %488 = add nuw nsw i64 %487, 1
  %489 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %488
  %490 = load i32, i32* %489, align 4, !tbaa !5
  %491 = icmp slt i32 %486, %490
  br i1 %491, label %492, label %544

; <label>:492:                                    ; preds = %485
  %493 = sext i32 %486 to i64
  %494 = sext i32 %490 to i64
  %495 = sub nsw i64 %494, %493
  %496 = add nsw i64 %494, -1
  %497 = and i64 %495, 1
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %510, label %499

; <label>:499:                                    ; preds = %492
  br label %500

; <label>:500:                                    ; preds = %499
  %501 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %493
  %502 = load double, double* %501, align 8, !tbaa !1
  %503 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %493
  %504 = load i32, i32* %503, align 4, !tbaa !5
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %505
  %507 = load double, double* %506, align 8, !tbaa !1
  %508 = fmul fast double %507, %502
  %509 = add nsw i64 %493, 1
  br label %510

; <label>:510:                                    ; preds = %492, %500
  %511 = phi i64 [ %509, %500 ], [ %493, %492 ]
  %512 = phi double [ %508, %500 ], [ 0.000000e+00, %492 ]
  %513 = phi double [ %508, %500 ], [ undef, %492 ]
  br label %514

; <label>:514:                                    ; preds = %510
  %515 = icmp eq i64 %496, %493
  br i1 %515, label %542, label %516

; <label>:516:                                    ; preds = %514
  br label %517

; <label>:517:                                    ; preds = %517, %516
  %518 = phi i64 [ %511, %516 ], [ %539, %517 ]
  %519 = phi double [ %512, %516 ], [ %538, %517 ]
  %520 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %518
  %521 = load double, double* %520, align 8, !tbaa !1
  %522 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %518
  %523 = load i32, i32* %522, align 4, !tbaa !5
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %524
  %526 = load double, double* %525, align 8, !tbaa !1
  %527 = fmul fast double %526, %521
  %528 = fadd fast double %527, %519
  %529 = add nsw i64 %518, 1
  %530 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %529
  %531 = load double, double* %530, align 8, !tbaa !1
  %532 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %529
  %533 = load i32, i32* %532, align 4, !tbaa !5
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %534
  %536 = load double, double* %535, align 8, !tbaa !1
  %537 = fmul fast double %536, %531
  %538 = fadd fast double %537, %528
  %539 = add nsw i64 %518, 2
  %540 = icmp slt i64 %539, %494
  br i1 %540, label %517, label %541

; <label>:541:                                    ; preds = %517
  br label %542

; <label>:542:                                    ; preds = %514, %541
  %543 = phi double [ %513, %514 ], [ %538, %541 ]
  br label %544

; <label>:544:                                    ; preds = %542, %485
  %545 = phi double [ 0.000000e+00, %485 ], [ %543, %542 ]
  %546 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %487
  store double %545, double* %546, align 8, !tbaa !1
  %547 = icmp slt i64 %487, %88
  br i1 %547, label %485, label %413

; <label>:548:                                    ; preds = %415, %548
  %549 = phi i64 [ %557, %548 ], [ %416, %415 ]
  %550 = phi double [ %556, %548 ], [ %417, %415 ]
  %551 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %549
  %552 = load double, double* %551, align 8, !tbaa !1
  %553 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %549
  %554 = load double, double* %553, align 8, !tbaa !1
  %555 = fmul fast double %554, %552
  %556 = fadd fast double %555, %550
  %557 = add nuw nsw i64 %549, 1
  %558 = icmp slt i64 %549, %89
  br i1 %558, label %548, label %559, !llvm.loop !31

; <label>:559:                                    ; preds = %548
  br label %560

; <label>:560:                                    ; preds = %559, %478
  %561 = phi double [ %484, %478 ], [ %556, %559 ]
  %562 = fdiv fast double %405, %561
  br i1 %9, label %723, label %563

; <label>:563:                                    ; preds = %560
  br i1 %95, label %620, label %564

; <label>:564:                                    ; preds = %563
  br i1 %105, label %620, label %565

; <label>:565:                                    ; preds = %564
  %566 = insertelement <2 x double> undef, double %562, i32 0
  %567 = shufflevector <2 x double> %566, <2 x double> undef, <2 x i32> zeroinitializer
  br label %568

; <label>:568:                                    ; preds = %568, %565
  %569 = phi i64 [ 0, %565 ], [ %613, %568 ]
  %570 = phi <2 x double> [ zeroinitializer, %565 ], [ %611, %568 ]
  %571 = phi <2 x double> [ zeroinitializer, %565 ], [ %612, %568 ]
  %572 = or i64 %569, 1
  %573 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %572
  %574 = bitcast double* %573 to <2 x double>*
  %575 = load <2 x double>, <2 x double>* %574, align 8, !tbaa !1
  %576 = getelementptr double, double* %573, i64 2
  %577 = bitcast double* %576 to <2 x double>*
  %578 = load <2 x double>, <2 x double>* %577, align 8, !tbaa !1
  %579 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %572
  %580 = bitcast double* %579 to <2 x double>*
  %581 = load <2 x double>, <2 x double>* %580, align 8, !tbaa !1
  %582 = getelementptr double, double* %579, i64 2
  %583 = bitcast double* %582 to <2 x double>*
  %584 = load <2 x double>, <2 x double>* %583, align 8, !tbaa !1
  %585 = fmul fast <2 x double> %581, %567
  %586 = fmul fast <2 x double> %584, %567
  %587 = fadd fast <2 x double> %585, %575
  %588 = fadd fast <2 x double> %586, %578
  %589 = bitcast double* %573 to <2 x double>*
  store <2 x double> %587, <2 x double>* %589, align 8, !tbaa !1
  %590 = bitcast double* %576 to <2 x double>*
  store <2 x double> %588, <2 x double>* %590, align 8, !tbaa !1
  %591 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %572
  %592 = bitcast double* %591 to <2 x double>*
  %593 = load <2 x double>, <2 x double>* %592, align 8, !tbaa !1
  %594 = getelementptr double, double* %591, i64 2
  %595 = bitcast double* %594 to <2 x double>*
  %596 = load <2 x double>, <2 x double>* %595, align 8, !tbaa !1
  %597 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %572
  %598 = bitcast double* %597 to <2 x double>*
  %599 = load <2 x double>, <2 x double>* %598, align 8, !tbaa !1
  %600 = getelementptr double, double* %597, i64 2
  %601 = bitcast double* %600 to <2 x double>*
  %602 = load <2 x double>, <2 x double>* %601, align 8, !tbaa !1
  %603 = fmul fast <2 x double> %599, %567
  %604 = fmul fast <2 x double> %602, %567
  %605 = fsub fast <2 x double> %593, %603
  %606 = fsub fast <2 x double> %596, %604
  %607 = bitcast double* %591 to <2 x double>*
  store <2 x double> %605, <2 x double>* %607, align 8, !tbaa !1
  %608 = bitcast double* %594 to <2 x double>*
  store <2 x double> %606, <2 x double>* %608, align 8, !tbaa !1
  %609 = fmul fast <2 x double> %605, %605
  %610 = fmul fast <2 x double> %606, %606
  %611 = fadd fast <2 x double> %609, %570
  %612 = fadd fast <2 x double> %610, %571
  %613 = add i64 %569, 4
  %614 = icmp eq i64 %613, %104
  br i1 %614, label %615, label %568, !llvm.loop !32

; <label>:615:                                    ; preds = %568
  %616 = fadd fast <2 x double> %612, %611
  %617 = shufflevector <2 x double> %616, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %618 = fadd fast <2 x double> %616, %617
  %619 = extractelement <2 x double> %618, i32 0
  br i1 %107, label %643, label %620

; <label>:620:                                    ; preds = %615, %564, %563
  %621 = phi i64 [ 1, %564 ], [ 1, %563 ], [ %106, %615 ]
  %622 = phi double [ 0.000000e+00, %564 ], [ 0.000000e+00, %563 ], [ %619, %615 ]
  br label %623

; <label>:623:                                    ; preds = %620, %623
  %624 = phi i64 [ %640, %623 ], [ %621, %620 ]
  %625 = phi double [ %639, %623 ], [ %622, %620 ]
  %626 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %624
  %627 = load double, double* %626, align 8, !tbaa !1
  %628 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %624
  %629 = load double, double* %628, align 8, !tbaa !1
  %630 = fmul fast double %629, %562
  %631 = fadd fast double %630, %627
  store double %631, double* %626, align 8, !tbaa !1
  %632 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %624
  %633 = load double, double* %632, align 8, !tbaa !1
  %634 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %624
  %635 = load double, double* %634, align 8, !tbaa !1
  %636 = fmul fast double %635, %562
  %637 = fsub fast double %633, %636
  store double %637, double* %632, align 8, !tbaa !1
  %638 = fmul fast double %637, %637
  %639 = fadd fast double %638, %625
  %640 = add nuw nsw i64 %624, 1
  %641 = icmp slt i64 %624, %89
  br i1 %641, label %623, label %642, !llvm.loop !33

; <label>:642:                                    ; preds = %623
  br label %643

; <label>:643:                                    ; preds = %642, %615
  %644 = phi double [ %619, %615 ], [ %639, %642 ]
  %645 = fdiv fast double %644, %405
  br i1 %9, label %723, label %646

; <label>:646:                                    ; preds = %643
  br i1 %96, label %710, label %647

; <label>:647:                                    ; preds = %646
  br i1 %98, label %710, label %648

; <label>:648:                                    ; preds = %647
  %649 = insertelement <2 x double> undef, double %645, i32 0
  %650 = shufflevector <2 x double> %649, <2 x double> undef, <2 x i32> zeroinitializer
  br i1 %101, label %661, label %651

; <label>:651:                                    ; preds = %648
  br label %652

; <label>:652:                                    ; preds = %651
  %653 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %654 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %655 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %656 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %657 = fmul fast <2 x double> %655, %650
  %658 = fmul fast <2 x double> %656, %650
  %659 = fadd fast <2 x double> %657, %653
  %660 = fadd fast <2 x double> %658, %654
  store <2 x double> %659, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  store <2 x double> %660, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  br label %661

; <label>:661:                                    ; preds = %648, %652
  %662 = phi i64 [ 4, %652 ], [ 0, %648 ]
  br label %663

; <label>:663:                                    ; preds = %661
  br i1 %102, label %709, label %664

; <label>:664:                                    ; preds = %663
  br label %665

; <label>:665:                                    ; preds = %665, %664
  %666 = phi i64 [ %662, %664 ], [ %706, %665 ]
  %667 = or i64 %666, 1
  %668 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %667
  %669 = bitcast double* %668 to <2 x double>*
  %670 = load <2 x double>, <2 x double>* %669, align 8, !tbaa !1
  %671 = getelementptr double, double* %668, i64 2
  %672 = bitcast double* %671 to <2 x double>*
  %673 = load <2 x double>, <2 x double>* %672, align 8, !tbaa !1
  %674 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %667
  %675 = bitcast double* %674 to <2 x double>*
  %676 = load <2 x double>, <2 x double>* %675, align 8, !tbaa !1
  %677 = getelementptr double, double* %674, i64 2
  %678 = bitcast double* %677 to <2 x double>*
  %679 = load <2 x double>, <2 x double>* %678, align 8, !tbaa !1
  %680 = fmul fast <2 x double> %676, %650
  %681 = fmul fast <2 x double> %679, %650
  %682 = fadd fast <2 x double> %680, %670
  %683 = fadd fast <2 x double> %681, %673
  %684 = bitcast double* %674 to <2 x double>*
  store <2 x double> %682, <2 x double>* %684, align 8, !tbaa !1
  %685 = bitcast double* %677 to <2 x double>*
  store <2 x double> %683, <2 x double>* %685, align 8, !tbaa !1
  %686 = add i64 %666, 4
  %687 = or i64 %686, 1
  %688 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %687
  %689 = bitcast double* %688 to <2 x double>*
  %690 = load <2 x double>, <2 x double>* %689, align 8, !tbaa !1
  %691 = getelementptr double, double* %688, i64 2
  %692 = bitcast double* %691 to <2 x double>*
  %693 = load <2 x double>, <2 x double>* %692, align 8, !tbaa !1
  %694 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %687
  %695 = bitcast double* %694 to <2 x double>*
  %696 = load <2 x double>, <2 x double>* %695, align 8, !tbaa !1
  %697 = getelementptr double, double* %694, i64 2
  %698 = bitcast double* %697 to <2 x double>*
  %699 = load <2 x double>, <2 x double>* %698, align 8, !tbaa !1
  %700 = fmul fast <2 x double> %696, %650
  %701 = fmul fast <2 x double> %699, %650
  %702 = fadd fast <2 x double> %700, %690
  %703 = fadd fast <2 x double> %701, %693
  %704 = bitcast double* %694 to <2 x double>*
  store <2 x double> %702, <2 x double>* %704, align 8, !tbaa !1
  %705 = bitcast double* %697 to <2 x double>*
  store <2 x double> %703, <2 x double>* %705, align 8, !tbaa !1
  %706 = add i64 %666, 8
  %707 = icmp eq i64 %706, %97
  br i1 %707, label %708, label %665, !llvm.loop !34

; <label>:708:                                    ; preds = %665
  br label %709

; <label>:709:                                    ; preds = %663, %708
  br i1 %103, label %723, label %710

; <label>:710:                                    ; preds = %709, %647, %646
  %711 = phi i64 [ 1, %647 ], [ 1, %646 ], [ %99, %709 ]
  br label %712

; <label>:712:                                    ; preds = %710, %712
  %713 = phi i64 [ %720, %712 ], [ %711, %710 ]
  %714 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %713
  %715 = load double, double* %714, align 8, !tbaa !1
  %716 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %713
  %717 = load double, double* %716, align 8, !tbaa !1
  %718 = fmul fast double %717, %645
  %719 = fadd fast double %718, %715
  store double %719, double* %716, align 8, !tbaa !1
  %720 = add nuw nsw i64 %713, 1
  %721 = icmp slt i64 %713, %89
  br i1 %721, label %712, label %722, !llvm.loop !35

; <label>:722:                                    ; preds = %712
  br label %723

; <label>:723:                                    ; preds = %722, %709, %413, %560, %643
  %724 = phi double [ %644, %643 ], [ 0.000000e+00, %560 ], [ 0.000000e+00, %413 ], [ %644, %709 ], [ %644, %722 ]
  %725 = add nuw nsw i32 %404, 1
  %726 = icmp eq i32 %725, 26
  br i1 %726, label %407, label %403

; <label>:727:                                    ; preds = %875
  br label %728

; <label>:728:                                    ; preds = %727, %408
  br i1 %9, label %892, label %729

; <label>:729:                                    ; preds = %728
  %730 = sext i32 %8 to i64
  %731 = icmp ult i32 %8, 4
  br i1 %731, label %732, label %735

; <label>:732:                                    ; preds = %808, %735, %729
  %733 = phi i64 [ 1, %735 ], [ 1, %729 ], [ %738, %808 ]
  %734 = phi double [ 0.000000e+00, %735 ], [ 0.000000e+00, %729 ], [ %814, %808 ]
  br label %879

; <label>:735:                                    ; preds = %729
  %736 = and i64 %730, -4
  %737 = icmp eq i64 %736, 0
  %738 = or i64 %736, 1
  br i1 %737, label %732, label %739

; <label>:739:                                    ; preds = %735
  %740 = add nsw i64 %736, -4
  %741 = lshr exact i64 %740, 2
  %742 = and i64 %741, 1
  %743 = icmp eq i64 %742, 0
  br i1 %743, label %744, label %754

; <label>:744:                                    ; preds = %739
  br label %745

; <label>:745:                                    ; preds = %744
  %746 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %747 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %748 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %749 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %750 = fsub fast <2 x double> %746, %748
  %751 = fsub fast <2 x double> %747, %749
  %752 = fmul fast <2 x double> %750, %750
  %753 = fmul fast <2 x double> %751, %751
  br label %754

; <label>:754:                                    ; preds = %745, %739
  %755 = phi <2 x double> [ undef, %739 ], [ %752, %745 ]
  %756 = phi <2 x double> [ undef, %739 ], [ %753, %745 ]
  %757 = phi i64 [ 0, %739 ], [ 4, %745 ]
  %758 = phi <2 x double> [ zeroinitializer, %739 ], [ %752, %745 ]
  %759 = phi <2 x double> [ zeroinitializer, %739 ], [ %753, %745 ]
  %760 = icmp eq i64 %741, 0
  br i1 %760, label %808, label %761

; <label>:761:                                    ; preds = %754
  br label %762

; <label>:762:                                    ; preds = %762, %761
  %763 = phi i64 [ %757, %761 ], [ %805, %762 ]
  %764 = phi <2 x double> [ %758, %761 ], [ %803, %762 ]
  %765 = phi <2 x double> [ %759, %761 ], [ %804, %762 ]
  %766 = or i64 %763, 1
  %767 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %766
  %768 = bitcast double* %767 to <2 x double>*
  %769 = load <2 x double>, <2 x double>* %768, align 8, !tbaa !1
  %770 = getelementptr double, double* %767, i64 2
  %771 = bitcast double* %770 to <2 x double>*
  %772 = load <2 x double>, <2 x double>* %771, align 8, !tbaa !1
  %773 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %766
  %774 = bitcast double* %773 to <2 x double>*
  %775 = load <2 x double>, <2 x double>* %774, align 8, !tbaa !1
  %776 = getelementptr double, double* %773, i64 2
  %777 = bitcast double* %776 to <2 x double>*
  %778 = load <2 x double>, <2 x double>* %777, align 8, !tbaa !1
  %779 = fsub fast <2 x double> %769, %775
  %780 = fsub fast <2 x double> %772, %778
  %781 = fmul fast <2 x double> %779, %779
  %782 = fmul fast <2 x double> %780, %780
  %783 = fadd fast <2 x double> %781, %764
  %784 = fadd fast <2 x double> %782, %765
  %785 = add i64 %763, 4
  %786 = or i64 %785, 1
  %787 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %786
  %788 = bitcast double* %787 to <2 x double>*
  %789 = load <2 x double>, <2 x double>* %788, align 8, !tbaa !1
  %790 = getelementptr double, double* %787, i64 2
  %791 = bitcast double* %790 to <2 x double>*
  %792 = load <2 x double>, <2 x double>* %791, align 8, !tbaa !1
  %793 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %786
  %794 = bitcast double* %793 to <2 x double>*
  %795 = load <2 x double>, <2 x double>* %794, align 8, !tbaa !1
  %796 = getelementptr double, double* %793, i64 2
  %797 = bitcast double* %796 to <2 x double>*
  %798 = load <2 x double>, <2 x double>* %797, align 8, !tbaa !1
  %799 = fsub fast <2 x double> %789, %795
  %800 = fsub fast <2 x double> %792, %798
  %801 = fmul fast <2 x double> %799, %799
  %802 = fmul fast <2 x double> %800, %800
  %803 = fadd fast <2 x double> %801, %783
  %804 = fadd fast <2 x double> %802, %784
  %805 = add i64 %763, 8
  %806 = icmp eq i64 %805, %736
  br i1 %806, label %807, label %762, !llvm.loop !36

; <label>:807:                                    ; preds = %762
  br label %808

; <label>:808:                                    ; preds = %754, %807
  %809 = phi <2 x double> [ %755, %754 ], [ %803, %807 ]
  %810 = phi <2 x double> [ %756, %754 ], [ %804, %807 ]
  %811 = fadd fast <2 x double> %810, %809
  %812 = shufflevector <2 x double> %811, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %813 = fadd fast <2 x double> %811, %812
  %814 = extractelement <2 x double> %813, i32 0
  %815 = icmp eq i64 %730, %736
  br i1 %815, label %892, label %732

; <label>:816:                                    ; preds = %875, %410
  %817 = phi i32 [ %821, %875 ], [ %412, %410 ]
  %818 = phi i64 [ %819, %875 ], [ 1, %410 ]
  %819 = add nuw nsw i64 %818, 1
  %820 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %819
  %821 = load i32, i32* %820, align 4, !tbaa !5
  %822 = icmp slt i32 %817, %821
  br i1 %822, label %823, label %875

; <label>:823:                                    ; preds = %816
  %824 = sext i32 %817 to i64
  %825 = sext i32 %821 to i64
  %826 = sub nsw i64 %825, %824
  %827 = add nsw i64 %825, -1
  %828 = and i64 %826, 1
  %829 = icmp eq i64 %828, 0
  br i1 %829, label %841, label %830

; <label>:830:                                    ; preds = %823
  br label %831

; <label>:831:                                    ; preds = %830
  %832 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %824
  %833 = load double, double* %832, align 8, !tbaa !1
  %834 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %824
  %835 = load i32, i32* %834, align 4, !tbaa !5
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %836
  %838 = load double, double* %837, align 8, !tbaa !1
  %839 = fmul fast double %838, %833
  %840 = add nsw i64 %824, 1
  br label %841

; <label>:841:                                    ; preds = %823, %831
  %842 = phi i64 [ %840, %831 ], [ %824, %823 ]
  %843 = phi double [ %839, %831 ], [ 0.000000e+00, %823 ]
  %844 = phi double [ %839, %831 ], [ undef, %823 ]
  br label %845

; <label>:845:                                    ; preds = %841
  %846 = icmp eq i64 %827, %824
  br i1 %846, label %873, label %847

; <label>:847:                                    ; preds = %845
  br label %848

; <label>:848:                                    ; preds = %848, %847
  %849 = phi i64 [ %842, %847 ], [ %870, %848 ]
  %850 = phi double [ %843, %847 ], [ %869, %848 ]
  %851 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %849
  %852 = load double, double* %851, align 8, !tbaa !1
  %853 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %849
  %854 = load i32, i32* %853, align 4, !tbaa !5
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %855
  %857 = load double, double* %856, align 8, !tbaa !1
  %858 = fmul fast double %857, %852
  %859 = fadd fast double %858, %850
  %860 = add nsw i64 %849, 1
  %861 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %860
  %862 = load double, double* %861, align 8, !tbaa !1
  %863 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %860
  %864 = load i32, i32* %863, align 4, !tbaa !5
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %865
  %867 = load double, double* %866, align 8, !tbaa !1
  %868 = fmul fast double %867, %862
  %869 = fadd fast double %868, %859
  %870 = add nsw i64 %849, 2
  %871 = icmp slt i64 %870, %825
  br i1 %871, label %848, label %872

; <label>:872:                                    ; preds = %848
  br label %873

; <label>:873:                                    ; preds = %845, %872
  %874 = phi double [ %844, %845 ], [ %869, %872 ]
  br label %875

; <label>:875:                                    ; preds = %873, %816
  %876 = phi double [ 0.000000e+00, %816 ], [ %874, %873 ]
  %877 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %818
  store double %876, double* %877, align 8, !tbaa !1
  %878 = icmp slt i64 %818, %411
  br i1 %878, label %816, label %727

; <label>:879:                                    ; preds = %732, %879
  %880 = phi i64 [ %889, %879 ], [ %733, %732 ]
  %881 = phi double [ %888, %879 ], [ %734, %732 ]
  %882 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %880
  %883 = load double, double* %882, align 8, !tbaa !1
  %884 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %880
  %885 = load double, double* %884, align 8, !tbaa !1
  %886 = fsub fast double %883, %885
  %887 = fmul fast double %886, %886
  %888 = fadd fast double %887, %881
  %889 = add nuw nsw i64 %880, 1
  %890 = icmp slt i64 %880, %730
  br i1 %890, label %879, label %891, !llvm.loop !37

; <label>:891:                                    ; preds = %879
  br label %892

; <label>:892:                                    ; preds = %891, %808, %728
  %893 = phi double [ 0.000000e+00, %728 ], [ %814, %808 ], [ %888, %891 ]
  %894 = tail call fast double @llvm.sqrt.f64(double %893)
  store double %894, double* %0, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind readnone
declare double @llvm.sqrt.f64(double) #4

declare void @timer_clear(i32) local_unnamed_addr #3

declare void @timer_start(i32) local_unnamed_addr #3

declare void @timer_stop(i32) local_unnamed_addr #3

declare double @timer_read(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare double @fabs(double) local_unnamed_addr #5

declare void @c_print_results(i8*, i8 signext, i32, i32, i32, i32, i32, double, double, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.vectorize.width", i32 1}
!9 = !{!"llvm.loop.interleave.count", i32 1}
!10 = distinct !{!10, !8, !9}
!11 = distinct !{!11, !12, !8, !9}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !8, !9}
!14 = distinct !{!14, !12, !8, !9}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !12, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !12, !8, !9}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !12, !8, !9}
!22 = distinct !{!22, !8, !9}
!23 = distinct !{!23, !8, !9}
!24 = distinct !{!24, !12, !8, !9}
!25 = distinct !{!25, !8, !9}
!26 = distinct !{!26, !12, !8, !9}
!27 = distinct !{!27, !8, !9}
!28 = distinct !{!28, !12, !8, !9}
!29 = distinct !{!29, !12, !8, !9}
!30 = distinct !{!30, !8, !9}
!31 = distinct !{!31, !12, !8, !9}
!32 = distinct !{!32, !8, !9}
!33 = distinct !{!33, !12, !8, !9}
!34 = distinct !{!34, !8, !9}
!35 = distinct !{!35, !12, !8, !9}
!36 = distinct !{!36, !8, !9}
!37 = distinct !{!37, !12, !8, !9}
