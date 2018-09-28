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
@.str.21 = private unnamed_addr constant [5 x i8] c"-O2 \00", align 1
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #6
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
  %8 = tail call double @randlc(double* nonnull @tran, double 0x41D2309CE5400000) #6
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
  %22 = fdiv double 1.000000e+00, %21
  %23 = tail call double @pow(double 1.000000e-01, double %22) #6
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
  tail call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 %32, i32 4, i1 false) #6
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
  %53 = tail call double @randlc(double* nonnull @tran, double %52) #6
  %54 = load double, double* @amult, align 8, !tbaa !1
  %55 = tail call double @randlc(double* nonnull @tran, double %54) #6
  %56 = fmul double %48, %55
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
  %126 = fmul double %42, %125
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
  %139 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.32, i64 0, i64 0)) #6
  %140 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 %136, i32 %12) #6
  %141 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %41) #6
  tail call void @exit(i32 1) #7
  unreachable

; <label>:142:                                    ; preds = %135
  %143 = sext i32 %136 to i64
  %144 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @acol, i64 0, i64 %143
  store i32 %117, i32* %144, align 4, !tbaa !5
  %145 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 %143
  store i32 %131, i32* %145, align 4, !tbaa !5
  %146 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %128
  %147 = load double, double* %146, align 8, !tbaa !1
  %148 = fmul double %126, %147
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
  %163 = fmul double %23, %42
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
  %177 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.32, i64 0, i64 0)) #6
  %178 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 %173, i32 %12) #6
  %179 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %176) #6
  tail call void @exit(i32 1) #7
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
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1) to i8*), i8 0, i64 %200, i32 4, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 1) to i8*), i8 0, i64 %200, i32 4, i1 false) #6
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
  tail call void @llvm.memset.p0i8.i64(i8* %300, i8 0, i64 %308, i32 8, i1 false) #6
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
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 1) to i8*), i8 0, i64 %366, i32 8, i1 false) #6
  %367 = shl nuw nsw i64 %364, 2
  %368 = add nuw nsw i64 %367, 4
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 1) to i8*), i8 0, i64 %368, i32 4, i1 false) #6
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
  %400 = fcmp une double %399, 0.000000e+00
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
  %425 = fadd double %422, %424
  store double %425, double* %421, align 8, !tbaa !1
  %426 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %420
  %427 = load i32, i32* %426, align 4, !tbaa !5
  %428 = icmp eq i32 %427, 0
  %429 = fcmp une double %425, 0.000000e+00
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

; <label>:439:                                    ; preds = %1020, %414
  %440 = phi i64 [ %410, %414 ], [ %1022, %1020 ]
  %441 = phi i32 [ %411, %414 ], [ %1021, %1020 ]
  %442 = getelementptr inbounds i32, i32* %193, i64 %440
  %443 = load i32, i32* %442, align 4, !tbaa !5
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %444
  store i32 0, i32* %445, align 4, !tbaa !5
  %446 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %444
  %447 = load double, double* %446, align 8, !tbaa !1
  store double 0.000000e+00, double* %446, align 8, !tbaa !1
  %448 = fcmp une double %447, 0.000000e+00
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
  %463 = fcmp une double %462, 0.000000e+00
  br i1 %463, label %1015, label %1020

; <label>:464:                                    ; preds = %1020
  br label %465

; <label>:465:                                    ; preds = %412, %464
  %466 = phi i32 [ %409, %412 ], [ %1021, %464 ]
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
  br label %662

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

; <label>:657:                                    ; preds = %662
  %658 = add nsw i32 %667, -1
  %659 = zext i32 %658 to i64
  %660 = shl nuw nsw i64 %659, 3
  %661 = add nuw nsw i64 %660, 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 1) to i8*), i8 0, i64 %661, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1) to i8*), i8 0, i64 %661, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to i8*), i8 0, i64 %661, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to i8*), i8 0, i64 %661, i32 8, i1 false)
  br label %669

; <label>:662:                                    ; preds = %514
  store double 1.000000e+00, double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 14001), align 8, !tbaa !1
  %663 = load i1, i1* @lastcol, align 4
  %664 = load i1, i1* @firstcol, align 4
  %665 = sext i1 %664 to i32
  %666 = select i1 %663, i32 14001, i32 1
  %667 = add nsw i32 %666, %665
  %668 = icmp slt i32 %667, 1
  br i1 %668, label %669, label %657

; <label>:669:                                    ; preds = %657, %662
  call fastcc void @conj_grad(double* nonnull %3)
  %670 = load i1, i1* @lastcol, align 4
  %671 = load i1, i1* @firstcol, align 4
  %672 = sext i1 %671 to i32
  %673 = select i1 %670, i32 14001, i32 1
  %674 = add nsw i32 %673, %672
  %675 = icmp slt i32 %674, 1
  br i1 %675, label %727, label %676

; <label>:676:                                    ; preds = %669
  %677 = sext i32 %674 to i64
  %678 = add nsw i64 %677, -1
  %679 = and i64 %677, 3
  %680 = icmp eq i64 %679, 0
  br i1 %680, label %694, label %681

; <label>:681:                                    ; preds = %676
  br label %682

; <label>:682:                                    ; preds = %682, %681
  %683 = phi i64 [ %690, %682 ], [ 1, %681 ]
  %684 = phi double [ %689, %682 ], [ 0.000000e+00, %681 ]
  %685 = phi i64 [ %691, %682 ], [ %679, %681 ]
  %686 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %683
  %687 = load double, double* %686, align 8, !tbaa !1
  %688 = fmul double %687, %687
  %689 = fadd double %684, %688
  %690 = add nuw nsw i64 %683, 1
  %691 = add i64 %685, -1
  %692 = icmp eq i64 %691, 0
  br i1 %692, label %693, label %682, !llvm.loop !13

; <label>:693:                                    ; preds = %682
  br label %694

; <label>:694:                                    ; preds = %676, %693
  %695 = phi i64 [ 1, %676 ], [ %690, %693 ]
  %696 = phi double [ 0.000000e+00, %676 ], [ %689, %693 ]
  %697 = phi double [ undef, %676 ], [ %689, %693 ]
  %698 = icmp ult i64 %678, 3
  br i1 %698, label %725, label %699

; <label>:699:                                    ; preds = %694
  br label %700

; <label>:700:                                    ; preds = %700, %699
  %701 = phi i64 [ %695, %699 ], [ %722, %700 ]
  %702 = phi double [ %696, %699 ], [ %721, %700 ]
  %703 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %701
  %704 = load double, double* %703, align 8, !tbaa !1
  %705 = fmul double %704, %704
  %706 = fadd double %702, %705
  %707 = add nuw nsw i64 %701, 1
  %708 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %707
  %709 = load double, double* %708, align 8, !tbaa !1
  %710 = fmul double %709, %709
  %711 = fadd double %706, %710
  %712 = add nsw i64 %701, 2
  %713 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %712
  %714 = load double, double* %713, align 8, !tbaa !1
  %715 = fmul double %714, %714
  %716 = fadd double %711, %715
  %717 = add nsw i64 %701, 3
  %718 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %717
  %719 = load double, double* %718, align 8, !tbaa !1
  %720 = fmul double %719, %719
  %721 = fadd double %716, %720
  %722 = add nsw i64 %701, 4
  %723 = icmp slt i64 %717, %677
  br i1 %723, label %700, label %724

; <label>:724:                                    ; preds = %700
  br label %725

; <label>:725:                                    ; preds = %694, %724
  %726 = phi double [ %697, %694 ], [ %721, %724 ]
  br label %727

; <label>:727:                                    ; preds = %725, %669
  %728 = phi double [ 0.000000e+00, %669 ], [ %726, %725 ]
  %729 = tail call double @sqrt(double %728) #6
  %730 = fdiv double 1.000000e+00, %729
  %731 = load i1, i1* @lastcol, align 4
  %732 = load i1, i1* @firstcol, align 4
  %733 = sext i1 %732 to i32
  %734 = select i1 %731, i32 14001, i32 1
  %735 = add nsw i32 %734, %733
  %736 = icmp slt i32 %735, 1
  br i1 %736, label %806, label %737

; <label>:737:                                    ; preds = %727
  %738 = sext i32 %735 to i64
  %739 = icmp ult i32 %735, 4
  br i1 %739, label %795, label %740

; <label>:740:                                    ; preds = %737
  %741 = and i64 %738, -4
  %742 = icmp eq i64 %741, 0
  %743 = or i64 %741, 1
  br i1 %742, label %795, label %744

; <label>:744:                                    ; preds = %740
  %745 = insertelement <2 x double> undef, double %730, i32 0
  %746 = shufflevector <2 x double> %745, <2 x double> undef, <2 x i32> zeroinitializer
  %747 = add nsw i64 %741, -4
  %748 = lshr exact i64 %747, 2
  %749 = and i64 %748, 1
  %750 = icmp eq i64 %749, 0
  br i1 %750, label %751, label %757

; <label>:751:                                    ; preds = %744
  br label %752

; <label>:752:                                    ; preds = %751
  %753 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %754 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %755 = fmul <2 x double> %746, %753
  %756 = fmul <2 x double> %746, %754
  store <2 x double> %755, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  store <2 x double> %756, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  br label %757

; <label>:757:                                    ; preds = %752, %744
  %758 = phi i64 [ 0, %744 ], [ 4, %752 ]
  %759 = icmp eq i64 %748, 0
  br i1 %759, label %793, label %760

; <label>:760:                                    ; preds = %757
  br label %761

; <label>:761:                                    ; preds = %761, %760
  %762 = phi i64 [ %758, %760 ], [ %790, %761 ]
  %763 = or i64 %762, 1
  %764 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %763
  %765 = bitcast double* %764 to <2 x double>*
  %766 = load <2 x double>, <2 x double>* %765, align 8, !tbaa !1
  %767 = getelementptr double, double* %764, i64 2
  %768 = bitcast double* %767 to <2 x double>*
  %769 = load <2 x double>, <2 x double>* %768, align 8, !tbaa !1
  %770 = fmul <2 x double> %746, %766
  %771 = fmul <2 x double> %746, %769
  %772 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %763
  %773 = bitcast double* %772 to <2 x double>*
  store <2 x double> %770, <2 x double>* %773, align 8, !tbaa !1
  %774 = getelementptr double, double* %772, i64 2
  %775 = bitcast double* %774 to <2 x double>*
  store <2 x double> %771, <2 x double>* %775, align 8, !tbaa !1
  %776 = add i64 %762, 4
  %777 = or i64 %776, 1
  %778 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %777
  %779 = bitcast double* %778 to <2 x double>*
  %780 = load <2 x double>, <2 x double>* %779, align 8, !tbaa !1
  %781 = getelementptr double, double* %778, i64 2
  %782 = bitcast double* %781 to <2 x double>*
  %783 = load <2 x double>, <2 x double>* %782, align 8, !tbaa !1
  %784 = fmul <2 x double> %746, %780
  %785 = fmul <2 x double> %746, %783
  %786 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %777
  %787 = bitcast double* %786 to <2 x double>*
  store <2 x double> %784, <2 x double>* %787, align 8, !tbaa !1
  %788 = getelementptr double, double* %786, i64 2
  %789 = bitcast double* %788 to <2 x double>*
  store <2 x double> %785, <2 x double>* %789, align 8, !tbaa !1
  %790 = add i64 %762, 8
  %791 = icmp eq i64 %790, %741
  br i1 %791, label %792, label %761, !llvm.loop !15

; <label>:792:                                    ; preds = %761
  br label %793

; <label>:793:                                    ; preds = %757, %792
  %794 = icmp eq i64 %738, %741
  br i1 %794, label %806, label %795

; <label>:795:                                    ; preds = %793, %740, %737
  %796 = phi i64 [ 1, %740 ], [ 1, %737 ], [ %743, %793 ]
  br label %797

; <label>:797:                                    ; preds = %795, %797
  %798 = phi i64 [ %803, %797 ], [ %796, %795 ]
  %799 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %798
  %800 = load double, double* %799, align 8, !tbaa !1
  %801 = fmul double %730, %800
  %802 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %798
  store double %801, double* %802, align 8, !tbaa !1
  %803 = add nuw nsw i64 %798, 1
  %804 = icmp slt i64 %798, %738
  br i1 %804, label %797, label %805, !llvm.loop !16

; <label>:805:                                    ; preds = %797
  br label %806

; <label>:806:                                    ; preds = %805, %793, %727
  br label %807

; <label>:807:                                    ; preds = %807, %806
  %808 = phi i64 [ 0, %806 ], [ %838, %807 ]
  %809 = or i64 %808, 1
  %810 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %809
  %811 = bitcast double* %810 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %811, align 8, !tbaa !1
  %812 = getelementptr double, double* %810, i64 2
  %813 = bitcast double* %812 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %813, align 8, !tbaa !1
  %814 = add nuw nsw i64 %808, 4
  %815 = or i64 %814, 1
  %816 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %815
  %817 = bitcast double* %816 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %817, align 8, !tbaa !1
  %818 = getelementptr double, double* %816, i64 2
  %819 = bitcast double* %818 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %819, align 8, !tbaa !1
  %820 = add nsw i64 %808, 8
  %821 = or i64 %820, 1
  %822 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %821
  %823 = bitcast double* %822 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %823, align 8, !tbaa !1
  %824 = getelementptr double, double* %822, i64 2
  %825 = bitcast double* %824 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %825, align 8, !tbaa !1
  %826 = add nsw i64 %808, 12
  %827 = or i64 %826, 1
  %828 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %827
  %829 = bitcast double* %828 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %829, align 8, !tbaa !1
  %830 = getelementptr double, double* %828, i64 2
  %831 = bitcast double* %830 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %831, align 8, !tbaa !1
  %832 = add nsw i64 %808, 16
  %833 = or i64 %832, 1
  %834 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %833
  %835 = bitcast double* %834 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %835, align 8, !tbaa !1
  %836 = getelementptr double, double* %834, i64 2
  %837 = bitcast double* %836 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %837, align 8, !tbaa !1
  %838 = add nsw i64 %808, 20
  %839 = icmp eq i64 %838, 14000
  br i1 %839, label %840, label %807, !llvm.loop !17

; <label>:840:                                    ; preds = %807
  br label %841

; <label>:841:                                    ; preds = %840
  store double 1.000000e+00, double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 14001), align 8, !tbaa !1
  tail call void @timer_clear(i32 1) #6
  tail call void @timer_start(i32 1) #6
  br label %842

; <label>:842:                                    ; preds = %990, %841
  %843 = phi i32 [ 1, %841 ], [ %991, %990 ]
  call fastcc void @conj_grad(double* nonnull %3)
  %844 = load i1, i1* @lastcol, align 4
  %845 = load i1, i1* @firstcol, align 4
  %846 = sext i1 %845 to i32
  %847 = select i1 %844, i32 14001, i32 1
  %848 = add nsw i32 %847, %846
  %849 = icmp slt i32 %848, 1
  br i1 %849, label %900, label %850

; <label>:850:                                    ; preds = %842
  %851 = sext i32 %848 to i64
  %852 = and i64 %851, 1
  %853 = icmp eq i64 %852, 0
  br i1 %853, label %864, label %854

; <label>:854:                                    ; preds = %850
  br label %855

; <label>:855:                                    ; preds = %854
  %856 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 1), align 8, !tbaa !1
  %857 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1), align 8, !tbaa !1
  %858 = insertelement <2 x double> undef, double %856, i32 0
  %859 = insertelement <2 x double> %858, double %857, i32 1
  %860 = insertelement <2 x double> undef, double %857, i32 0
  %861 = shufflevector <2 x double> %860, <2 x double> undef, <2 x i32> zeroinitializer
  %862 = fmul <2 x double> %859, %861
  %863 = fadd <2 x double> %862, zeroinitializer
  br label %864

; <label>:864:                                    ; preds = %850, %855
  %865 = phi i64 [ 2, %855 ], [ 1, %850 ]
  %866 = phi <2 x double> [ %863, %855 ], [ zeroinitializer, %850 ]
  %867 = phi <2 x double> [ %863, %855 ], [ undef, %850 ]
  br label %868

; <label>:868:                                    ; preds = %864
  %869 = icmp eq i32 %848, 1
  br i1 %869, label %898, label %870

; <label>:870:                                    ; preds = %868
  br label %871

; <label>:871:                                    ; preds = %871, %870
  %872 = phi i64 [ %865, %870 ], [ %895, %871 ]
  %873 = phi <2 x double> [ %866, %870 ], [ %894, %871 ]
  %874 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %872
  %875 = load double, double* %874, align 8, !tbaa !1
  %876 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %872
  %877 = load double, double* %876, align 8, !tbaa !1
  %878 = insertelement <2 x double> undef, double %875, i32 0
  %879 = insertelement <2 x double> %878, double %877, i32 1
  %880 = insertelement <2 x double> undef, double %877, i32 0
  %881 = shufflevector <2 x double> %880, <2 x double> undef, <2 x i32> zeroinitializer
  %882 = fmul <2 x double> %879, %881
  %883 = fadd <2 x double> %873, %882
  %884 = add nuw nsw i64 %872, 1
  %885 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %884
  %886 = load double, double* %885, align 8, !tbaa !1
  %887 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %884
  %888 = load double, double* %887, align 8, !tbaa !1
  %889 = insertelement <2 x double> undef, double %886, i32 0
  %890 = insertelement <2 x double> %889, double %888, i32 1
  %891 = insertelement <2 x double> undef, double %888, i32 0
  %892 = shufflevector <2 x double> %891, <2 x double> undef, <2 x i32> zeroinitializer
  %893 = fmul <2 x double> %890, %892
  %894 = fadd <2 x double> %883, %893
  %895 = add nsw i64 %872, 2
  %896 = icmp slt i64 %884, %851
  br i1 %896, label %871, label %897

; <label>:897:                                    ; preds = %871
  br label %898

; <label>:898:                                    ; preds = %868, %897
  %899 = phi <2 x double> [ %867, %868 ], [ %894, %897 ]
  br label %900

; <label>:900:                                    ; preds = %898, %842
  %901 = phi <2 x double> [ zeroinitializer, %842 ], [ %899, %898 ]
  %902 = extractelement <2 x double> %901, i32 1
  %903 = tail call double @sqrt(double %902) #6
  %904 = fdiv double 1.000000e+00, %903
  %905 = extractelement <2 x double> %901, i32 0
  %906 = fdiv double 1.000000e+00, %905
  %907 = fadd double %906, 2.000000e+01
  %908 = icmp eq i32 %843, 1
  br i1 %908, label %909, label %911

; <label>:909:                                    ; preds = %900
  %910 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @str.30, i64 0, i64 0))
  br label %911

; <label>:911:                                    ; preds = %909, %900
  %912 = load double, double* %3, align 8, !tbaa !1
  %913 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %843, double %912, double %907)
  %914 = load i1, i1* @lastcol, align 4
  %915 = load i1, i1* @firstcol, align 4
  %916 = sext i1 %915 to i32
  %917 = select i1 %914, i32 14001, i32 1
  %918 = add nsw i32 %917, %916
  %919 = icmp slt i32 %918, 1
  br i1 %919, label %990, label %920

; <label>:920:                                    ; preds = %911
  %921 = sext i32 %918 to i64
  %922 = icmp ult i32 %918, 4
  br i1 %922, label %979, label %923

; <label>:923:                                    ; preds = %920
  %924 = and i64 %921, -4
  %925 = icmp eq i64 %924, 0
  %926 = or i64 %924, 1
  br i1 %925, label %979, label %927

; <label>:927:                                    ; preds = %923
  %928 = insertelement <2 x double> undef, double %904, i32 0
  %929 = shufflevector <2 x double> %928, <2 x double> undef, <2 x i32> zeroinitializer
  %930 = add nsw i64 %924, -4
  %931 = lshr exact i64 %930, 2
  %932 = and i64 %931, 1
  %933 = icmp eq i64 %932, 0
  br i1 %933, label %934, label %940

; <label>:934:                                    ; preds = %927
  br label %935

; <label>:935:                                    ; preds = %934
  %936 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %937 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %938 = fmul <2 x double> %929, %936
  %939 = fmul <2 x double> %929, %937
  store <2 x double> %938, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  store <2 x double> %939, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  br label %940

; <label>:940:                                    ; preds = %927, %935
  %941 = phi i64 [ 4, %935 ], [ 0, %927 ]
  br label %942

; <label>:942:                                    ; preds = %940
  %943 = icmp eq i64 %931, 0
  br i1 %943, label %977, label %944

; <label>:944:                                    ; preds = %942
  br label %945

; <label>:945:                                    ; preds = %945, %944
  %946 = phi i64 [ %941, %944 ], [ %974, %945 ]
  %947 = or i64 %946, 1
  %948 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %947
  %949 = bitcast double* %948 to <2 x double>*
  %950 = load <2 x double>, <2 x double>* %949, align 8, !tbaa !1
  %951 = getelementptr double, double* %948, i64 2
  %952 = bitcast double* %951 to <2 x double>*
  %953 = load <2 x double>, <2 x double>* %952, align 8, !tbaa !1
  %954 = fmul <2 x double> %929, %950
  %955 = fmul <2 x double> %929, %953
  %956 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %947
  %957 = bitcast double* %956 to <2 x double>*
  store <2 x double> %954, <2 x double>* %957, align 8, !tbaa !1
  %958 = getelementptr double, double* %956, i64 2
  %959 = bitcast double* %958 to <2 x double>*
  store <2 x double> %955, <2 x double>* %959, align 8, !tbaa !1
  %960 = add i64 %946, 4
  %961 = or i64 %960, 1
  %962 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %961
  %963 = bitcast double* %962 to <2 x double>*
  %964 = load <2 x double>, <2 x double>* %963, align 8, !tbaa !1
  %965 = getelementptr double, double* %962, i64 2
  %966 = bitcast double* %965 to <2 x double>*
  %967 = load <2 x double>, <2 x double>* %966, align 8, !tbaa !1
  %968 = fmul <2 x double> %929, %964
  %969 = fmul <2 x double> %929, %967
  %970 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %961
  %971 = bitcast double* %970 to <2 x double>*
  store <2 x double> %968, <2 x double>* %971, align 8, !tbaa !1
  %972 = getelementptr double, double* %970, i64 2
  %973 = bitcast double* %972 to <2 x double>*
  store <2 x double> %969, <2 x double>* %973, align 8, !tbaa !1
  %974 = add i64 %946, 8
  %975 = icmp eq i64 %974, %924
  br i1 %975, label %976, label %945, !llvm.loop !18

; <label>:976:                                    ; preds = %945
  br label %977

; <label>:977:                                    ; preds = %942, %976
  %978 = icmp eq i64 %921, %924
  br i1 %978, label %990, label %979

; <label>:979:                                    ; preds = %977, %923, %920
  %980 = phi i64 [ 1, %923 ], [ 1, %920 ], [ %926, %977 ]
  br label %981

; <label>:981:                                    ; preds = %979, %981
  %982 = phi i64 [ %987, %981 ], [ %980, %979 ]
  %983 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %982
  %984 = load double, double* %983, align 8, !tbaa !1
  %985 = fmul double %904, %984
  %986 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %982
  store double %985, double* %986, align 8, !tbaa !1
  %987 = add nuw nsw i64 %982, 1
  %988 = icmp slt i64 %982, %921
  br i1 %988, label %981, label %989, !llvm.loop !19

; <label>:989:                                    ; preds = %981
  br label %990

; <label>:990:                                    ; preds = %989, %977, %911
  %991 = add nuw nsw i32 %843, 1
  %992 = icmp eq i32 %991, 16
  br i1 %992, label %993, label %842

; <label>:993:                                    ; preds = %990
  tail call void @timer_stop(i32 1) #6
  %994 = tail call double @timer_read(i32 1) #6
  %995 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.27, i64 0, i64 0))
  %996 = fadd double %907, 0xC031215715A1D8EC
  %997 = tail call double @fabs(double %996) #8
  %998 = fcmp ugt double %997, 1.000000e-10
  br i1 %998, label %1003, label %999

; <label>:999:                                    ; preds = %993
  %1000 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.29, i64 0, i64 0))
  %1001 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), double %907)
  %1002 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), double %996)
  br label %1007

; <label>:1003:                                   ; preds = %993
  %1004 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.28, i64 0, i64 0))
  %1005 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), double %907)
  %1006 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), double 0x4031215715A1D8EC)
  br label %1007

; <label>:1007:                                   ; preds = %999, %1003
  %1008 = phi i32 [ 1, %999 ], [ 0, %1003 ]
  %1009 = fcmp une double %994, 0.000000e+00
  br i1 %1009, label %1010, label %1013

; <label>:1010:                                   ; preds = %1007
  %1011 = fdiv double 1.496460e+09, %994
  %1012 = fdiv double %1011, 1.000000e+06
  br label %1013

; <label>:1013:                                   ; preds = %1007, %1010
  %1014 = phi double [ %1012, %1010 ], [ 0.000000e+00, %1007 ]
  tail call void @c_print_results(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8 signext 65, i32 14000, i32 0, i32 0, i32 15, i32 1, double %994, double %1014, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %1008, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #6
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #6
  ret i32 0

; <label>:1015:                                   ; preds = %454
  %1016 = add nsw i32 %455, 1
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %1017
  store double %462, double* %1018, align 8, !tbaa !1
  %1019 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %1017
  store i32 %458, i32* %1019, align 4, !tbaa !5
  br label %1020

; <label>:1020:                                   ; preds = %1015, %454
  %1021 = phi i32 [ %1016, %1015 ], [ %455, %454 ]
  %1022 = add nsw i64 %440, 2
  %1023 = icmp eq i64 %1022, %390
  br i1 %1023, label %464, label %439
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
  %10 = sext i32 %8 to i64
  br i1 %9, label %37, label %11

; <label>:11:                                     ; preds = %1
  %12 = add nsw i64 %10, -1
  %13 = and i64 %10, 3
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %28, label %15

; <label>:15:                                     ; preds = %11
  br label %16

; <label>:16:                                     ; preds = %16, %15
  %17 = phi i64 [ %24, %16 ], [ 1, %15 ]
  %18 = phi double [ %23, %16 ], [ 0.000000e+00, %15 ]
  %19 = phi i64 [ %25, %16 ], [ %13, %15 ]
  %20 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %17
  %21 = load double, double* %20, align 8, !tbaa !1
  %22 = fmul double %21, %21
  %23 = fadd double %18, %22
  %24 = add nuw nsw i64 %17, 1
  %25 = add i64 %19, -1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %16, !llvm.loop !20

; <label>:27:                                     ; preds = %16
  br label %28

; <label>:28:                                     ; preds = %11, %27
  %29 = phi i64 [ 1, %11 ], [ %24, %27 ]
  %30 = phi double [ 0.000000e+00, %11 ], [ %23, %27 ]
  %31 = phi double [ undef, %11 ], [ %23, %27 ]
  %32 = icmp ult i64 %12, 3
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %28
  br label %64

; <label>:34:                                     ; preds = %64
  br label %35

; <label>:35:                                     ; preds = %28, %34
  %36 = phi double [ %31, %28 ], [ %85, %34 ]
  br label %37

; <label>:37:                                     ; preds = %35, %1
  %38 = phi double [ 0.000000e+00, %1 ], [ %36, %35 ]
  %39 = load i1, i1* @lastrow, align 4
  %40 = load i1, i1* @firstrow, align 4
  %41 = sext i1 %40 to i32
  %42 = select i1 %39, i32 14001, i32 1
  %43 = add nsw i32 %42, %41
  %44 = icmp slt i32 %43, 1
  %45 = load i32, i32* @conj_grad.callcount, align 4, !tbaa !5
  %46 = sext i32 %43 to i64
  %47 = add nsw i64 %10, -1
  %48 = add nsw i64 %10, -4
  %49 = lshr i64 %48, 2
  %50 = and i64 %10, 3
  %51 = icmp eq i64 %50, 0
  %52 = icmp ult i64 %47, 3
  %53 = and i64 %10, 1
  %54 = icmp eq i64 %53, 0
  %55 = icmp eq i64 %47, 0
  %56 = icmp ult i32 %8, 4
  %57 = and i64 %10, -4
  %58 = icmp eq i64 %57, 0
  %59 = or i64 %57, 1
  %60 = and i64 %49, 1
  %61 = icmp eq i64 %60, 0
  %62 = icmp eq i64 %49, 0
  %63 = icmp eq i64 %10, %57
  br label %88

; <label>:64:                                     ; preds = %64, %33
  %65 = phi i64 [ %29, %33 ], [ %86, %64 ]
  %66 = phi double [ %30, %33 ], [ %85, %64 ]
  %67 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %65
  %68 = load double, double* %67, align 8, !tbaa !1
  %69 = fmul double %68, %68
  %70 = fadd double %66, %69
  %71 = add nuw nsw i64 %65, 1
  %72 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %71
  %73 = load double, double* %72, align 8, !tbaa !1
  %74 = fmul double %73, %73
  %75 = fadd double %70, %74
  %76 = add nsw i64 %65, 2
  %77 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %76
  %78 = load double, double* %77, align 8, !tbaa !1
  %79 = fmul double %78, %78
  %80 = fadd double %75, %79
  %81 = add nsw i64 %65, 3
  %82 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %81
  %83 = load double, double* %82, align 8, !tbaa !1
  %84 = fmul double %83, %83
  %85 = fadd double %80, %84
  %86 = add nsw i64 %65, 4
  %87 = icmp slt i64 %81, %10
  br i1 %87, label %64, label %34

; <label>:88:                                     ; preds = %354, %37
  %89 = phi i32 [ 1, %37 ], [ %356, %354 ]
  %90 = phi double [ %38, %37 ], [ %355, %354 ]
  br i1 %44, label %97, label %91

; <label>:91:                                     ; preds = %88
  br label %119

; <label>:92:                                     ; preds = %354
  %93 = add i32 %45, 25
  store i32 %93, i32* @conj_grad.callcount, align 4, !tbaa !5
  br i1 %44, label %359, label %94

; <label>:94:                                     ; preds = %92
  %95 = load i32, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  br label %386

; <label>:96:                                     ; preds = %180
  br label %97

; <label>:97:                                     ; preds = %96, %88
  br i1 %9, label %354, label %98

; <label>:98:                                     ; preds = %97
  br i1 %51, label %114, label %99

; <label>:99:                                     ; preds = %98
  br label %100

; <label>:100:                                    ; preds = %100, %99
  %101 = phi i64 [ %110, %100 ], [ 1, %99 ]
  %102 = phi double [ %109, %100 ], [ 0.000000e+00, %99 ]
  %103 = phi i64 [ %111, %100 ], [ %50, %99 ]
  %104 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %101
  %105 = load double, double* %104, align 8, !tbaa !1
  %106 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %101
  %107 = load double, double* %106, align 8, !tbaa !1
  %108 = fmul double %105, %107
  %109 = fadd double %102, %108
  %110 = add nuw nsw i64 %101, 1
  %111 = add i64 %103, -1
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %100, !llvm.loop !21

; <label>:113:                                    ; preds = %100
  br label %114

; <label>:114:                                    ; preds = %98, %113
  %115 = phi i64 [ 1, %98 ], [ %110, %113 ]
  %116 = phi double [ 0.000000e+00, %98 ], [ %109, %113 ]
  %117 = phi double [ undef, %98 ], [ %109, %113 ]
  br i1 %52, label %217, label %118

; <label>:118:                                    ; preds = %114
  br label %184

; <label>:119:                                    ; preds = %91, %180
  %120 = phi i64 [ %123, %180 ], [ 1, %91 ]
  %121 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4, !tbaa !5
  %123 = add nuw nsw i64 %120, 1
  %124 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4, !tbaa !5
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %180

; <label>:127:                                    ; preds = %119
  %128 = sext i32 %122 to i64
  %129 = sext i32 %125 to i64
  %130 = sub nsw i64 %129, %128
  %131 = add nsw i64 %129, -1
  %132 = and i64 %130, 1
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %146, label %134

; <label>:134:                                    ; preds = %127
  br label %135

; <label>:135:                                    ; preds = %134
  %136 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %128
  %137 = load double, double* %136, align 8, !tbaa !1
  %138 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %128
  %139 = load i32, i32* %138, align 4, !tbaa !5
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %140
  %142 = load double, double* %141, align 8, !tbaa !1
  %143 = fmul double %137, %142
  %144 = fadd double %143, 0.000000e+00
  %145 = add nsw i64 %128, 1
  br label %146

; <label>:146:                                    ; preds = %127, %135
  %147 = phi i64 [ %145, %135 ], [ %128, %127 ]
  %148 = phi double [ %144, %135 ], [ 0.000000e+00, %127 ]
  %149 = phi double [ %144, %135 ], [ undef, %127 ]
  br label %150

; <label>:150:                                    ; preds = %146
  %151 = icmp eq i64 %131, %128
  br i1 %151, label %178, label %152

; <label>:152:                                    ; preds = %150
  br label %153

; <label>:153:                                    ; preds = %153, %152
  %154 = phi i64 [ %147, %152 ], [ %175, %153 ]
  %155 = phi double [ %148, %152 ], [ %174, %153 ]
  %156 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %154
  %157 = load double, double* %156, align 8, !tbaa !1
  %158 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %154
  %159 = load i32, i32* %158, align 4, !tbaa !5
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %160
  %162 = load double, double* %161, align 8, !tbaa !1
  %163 = fmul double %157, %162
  %164 = fadd double %155, %163
  %165 = add nsw i64 %154, 1
  %166 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %165
  %167 = load double, double* %166, align 8, !tbaa !1
  %168 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %165
  %169 = load i32, i32* %168, align 4, !tbaa !5
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %170
  %172 = load double, double* %171, align 8, !tbaa !1
  %173 = fmul double %167, %172
  %174 = fadd double %164, %173
  %175 = add nsw i64 %154, 2
  %176 = icmp slt i64 %175, %129
  br i1 %176, label %153, label %177

; <label>:177:                                    ; preds = %153
  br label %178

; <label>:178:                                    ; preds = %150, %177
  %179 = phi double [ %149, %150 ], [ %174, %177 ]
  br label %180

; <label>:180:                                    ; preds = %178, %119
  %181 = phi double [ 0.000000e+00, %119 ], [ %179, %178 ]
  %182 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %120
  store double %181, double* %182, align 8, !tbaa !1
  %183 = icmp slt i64 %120, %46
  br i1 %183, label %119, label %96

; <label>:184:                                    ; preds = %184, %118
  %185 = phi i64 [ %115, %118 ], [ %214, %184 ]
  %186 = phi double [ %116, %118 ], [ %213, %184 ]
  %187 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %185
  %188 = load double, double* %187, align 8, !tbaa !1
  %189 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %185
  %190 = load double, double* %189, align 8, !tbaa !1
  %191 = fmul double %188, %190
  %192 = fadd double %186, %191
  %193 = add nuw nsw i64 %185, 1
  %194 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %193
  %195 = load double, double* %194, align 8, !tbaa !1
  %196 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %193
  %197 = load double, double* %196, align 8, !tbaa !1
  %198 = fmul double %195, %197
  %199 = fadd double %192, %198
  %200 = add nsw i64 %185, 2
  %201 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %200
  %202 = load double, double* %201, align 8, !tbaa !1
  %203 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %200
  %204 = load double, double* %203, align 8, !tbaa !1
  %205 = fmul double %202, %204
  %206 = fadd double %199, %205
  %207 = add nsw i64 %185, 3
  %208 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %207
  %209 = load double, double* %208, align 8, !tbaa !1
  %210 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %207
  %211 = load double, double* %210, align 8, !tbaa !1
  %212 = fmul double %209, %211
  %213 = fadd double %206, %212
  %214 = add nsw i64 %185, 4
  %215 = icmp slt i64 %207, %10
  br i1 %215, label %184, label %216

; <label>:216:                                    ; preds = %184
  br label %217

; <label>:217:                                    ; preds = %114, %216
  %218 = phi double [ %117, %114 ], [ %213, %216 ]
  %219 = fdiv double %90, %218
  br i1 %9, label %354, label %220

; <label>:220:                                    ; preds = %217
  br i1 %54, label %233, label %221

; <label>:221:                                    ; preds = %220
  br label %222

; <label>:222:                                    ; preds = %221
  %223 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1), align 8, !tbaa !1
  %224 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1), align 8, !tbaa !1
  %225 = fmul double %219, %224
  %226 = fadd double %223, %225
  store double %226, double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1), align 8, !tbaa !1
  %227 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1), align 8, !tbaa !1
  %228 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 1), align 8, !tbaa !1
  %229 = fmul double %219, %228
  %230 = fsub double %227, %229
  store double %230, double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1), align 8, !tbaa !1
  %231 = fmul double %230, %230
  %232 = fadd double %231, 0.000000e+00
  br label %233

; <label>:233:                                    ; preds = %220, %222
  %234 = phi i64 [ 2, %222 ], [ 1, %220 ]
  %235 = phi double [ %232, %222 ], [ 0.000000e+00, %220 ]
  %236 = phi double [ %232, %222 ], [ undef, %220 ]
  br label %237

; <label>:237:                                    ; preds = %233
  br i1 %55, label %274, label %238

; <label>:238:                                    ; preds = %237
  br label %239

; <label>:239:                                    ; preds = %239, %238
  %240 = phi i64 [ %234, %238 ], [ %271, %239 ]
  %241 = phi double [ %235, %238 ], [ %270, %239 ]
  %242 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %240
  %243 = load double, double* %242, align 8, !tbaa !1
  %244 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %240
  %245 = load double, double* %244, align 8, !tbaa !1
  %246 = fmul double %219, %245
  %247 = fadd double %243, %246
  store double %247, double* %242, align 8, !tbaa !1
  %248 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %240
  %249 = load double, double* %248, align 8, !tbaa !1
  %250 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %240
  %251 = load double, double* %250, align 8, !tbaa !1
  %252 = fmul double %219, %251
  %253 = fsub double %249, %252
  store double %253, double* %248, align 8, !tbaa !1
  %254 = fmul double %253, %253
  %255 = fadd double %241, %254
  %256 = add nuw nsw i64 %240, 1
  %257 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %256
  %258 = load double, double* %257, align 8, !tbaa !1
  %259 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %256
  %260 = load double, double* %259, align 8, !tbaa !1
  %261 = fmul double %219, %260
  %262 = fadd double %258, %261
  store double %262, double* %257, align 8, !tbaa !1
  %263 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %256
  %264 = load double, double* %263, align 8, !tbaa !1
  %265 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %256
  %266 = load double, double* %265, align 8, !tbaa !1
  %267 = fmul double %219, %266
  %268 = fsub double %264, %267
  store double %268, double* %263, align 8, !tbaa !1
  %269 = fmul double %268, %268
  %270 = fadd double %255, %269
  %271 = add nsw i64 %240, 2
  %272 = icmp slt i64 %256, %10
  br i1 %272, label %239, label %273

; <label>:273:                                    ; preds = %239
  br label %274

; <label>:274:                                    ; preds = %237, %273
  %275 = phi double [ %236, %237 ], [ %270, %273 ]
  %276 = fdiv double %275, %90
  br i1 %9, label %354, label %277

; <label>:277:                                    ; preds = %274
  br i1 %56, label %341, label %278

; <label>:278:                                    ; preds = %277
  br i1 %58, label %341, label %279

; <label>:279:                                    ; preds = %278
  %280 = insertelement <2 x double> undef, double %276, i32 0
  %281 = shufflevector <2 x double> %280, <2 x double> undef, <2 x i32> zeroinitializer
  br i1 %61, label %282, label %292

; <label>:282:                                    ; preds = %279
  br label %283

; <label>:283:                                    ; preds = %282
  %284 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %285 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %286 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %287 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %288 = fmul <2 x double> %281, %286
  %289 = fmul <2 x double> %281, %287
  %290 = fadd <2 x double> %284, %288
  %291 = fadd <2 x double> %285, %289
  store <2 x double> %290, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  store <2 x double> %291, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  br label %292

; <label>:292:                                    ; preds = %279, %283
  %293 = phi i64 [ 4, %283 ], [ 0, %279 ]
  br label %294

; <label>:294:                                    ; preds = %292
  br i1 %62, label %340, label %295

; <label>:295:                                    ; preds = %294
  br label %296

; <label>:296:                                    ; preds = %296, %295
  %297 = phi i64 [ %293, %295 ], [ %337, %296 ]
  %298 = or i64 %297, 1
  %299 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %298
  %300 = bitcast double* %299 to <2 x double>*
  %301 = load <2 x double>, <2 x double>* %300, align 8, !tbaa !1
  %302 = getelementptr double, double* %299, i64 2
  %303 = bitcast double* %302 to <2 x double>*
  %304 = load <2 x double>, <2 x double>* %303, align 8, !tbaa !1
  %305 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %298
  %306 = bitcast double* %305 to <2 x double>*
  %307 = load <2 x double>, <2 x double>* %306, align 8, !tbaa !1
  %308 = getelementptr double, double* %305, i64 2
  %309 = bitcast double* %308 to <2 x double>*
  %310 = load <2 x double>, <2 x double>* %309, align 8, !tbaa !1
  %311 = fmul <2 x double> %281, %307
  %312 = fmul <2 x double> %281, %310
  %313 = fadd <2 x double> %301, %311
  %314 = fadd <2 x double> %304, %312
  %315 = bitcast double* %305 to <2 x double>*
  store <2 x double> %313, <2 x double>* %315, align 8, !tbaa !1
  %316 = bitcast double* %308 to <2 x double>*
  store <2 x double> %314, <2 x double>* %316, align 8, !tbaa !1
  %317 = add i64 %297, 4
  %318 = or i64 %317, 1
  %319 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %318
  %320 = bitcast double* %319 to <2 x double>*
  %321 = load <2 x double>, <2 x double>* %320, align 8, !tbaa !1
  %322 = getelementptr double, double* %319, i64 2
  %323 = bitcast double* %322 to <2 x double>*
  %324 = load <2 x double>, <2 x double>* %323, align 8, !tbaa !1
  %325 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %318
  %326 = bitcast double* %325 to <2 x double>*
  %327 = load <2 x double>, <2 x double>* %326, align 8, !tbaa !1
  %328 = getelementptr double, double* %325, i64 2
  %329 = bitcast double* %328 to <2 x double>*
  %330 = load <2 x double>, <2 x double>* %329, align 8, !tbaa !1
  %331 = fmul <2 x double> %281, %327
  %332 = fmul <2 x double> %281, %330
  %333 = fadd <2 x double> %321, %331
  %334 = fadd <2 x double> %324, %332
  %335 = bitcast double* %325 to <2 x double>*
  store <2 x double> %333, <2 x double>* %335, align 8, !tbaa !1
  %336 = bitcast double* %328 to <2 x double>*
  store <2 x double> %334, <2 x double>* %336, align 8, !tbaa !1
  %337 = add i64 %297, 8
  %338 = icmp eq i64 %337, %57
  br i1 %338, label %339, label %296, !llvm.loop !22

; <label>:339:                                    ; preds = %296
  br label %340

; <label>:340:                                    ; preds = %294, %339
  br i1 %63, label %354, label %341

; <label>:341:                                    ; preds = %340, %278, %277
  %342 = phi i64 [ 1, %278 ], [ 1, %277 ], [ %59, %340 ]
  br label %343

; <label>:343:                                    ; preds = %341, %343
  %344 = phi i64 [ %351, %343 ], [ %342, %341 ]
  %345 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %344
  %346 = load double, double* %345, align 8, !tbaa !1
  %347 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %344
  %348 = load double, double* %347, align 8, !tbaa !1
  %349 = fmul double %276, %348
  %350 = fadd double %346, %349
  store double %350, double* %347, align 8, !tbaa !1
  %351 = add nuw nsw i64 %344, 1
  %352 = icmp slt i64 %344, %10
  br i1 %352, label %343, label %353, !llvm.loop !23

; <label>:353:                                    ; preds = %343
  br label %354

; <label>:354:                                    ; preds = %353, %340, %97, %217, %274
  %355 = phi double [ %275, %274 ], [ 0.000000e+00, %217 ], [ 0.000000e+00, %97 ], [ %275, %340 ], [ %275, %353 ]
  %356 = add nuw nsw i32 %89, 1
  %357 = icmp eq i32 %356, 26
  br i1 %357, label %92, label %88

; <label>:358:                                    ; preds = %446
  br label %359

; <label>:359:                                    ; preds = %358, %92
  br i1 %9, label %489, label %360

; <label>:360:                                    ; preds = %359
  %361 = add nsw i64 %10, -1
  %362 = and i64 %10, 3
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %380, label %364

; <label>:364:                                    ; preds = %360
  br label %365

; <label>:365:                                    ; preds = %365, %364
  %366 = phi i64 [ %376, %365 ], [ 1, %364 ]
  %367 = phi double [ %375, %365 ], [ 0.000000e+00, %364 ]
  %368 = phi i64 [ %377, %365 ], [ %362, %364 ]
  %369 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %366
  %370 = load double, double* %369, align 8, !tbaa !1
  %371 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %366
  %372 = load double, double* %371, align 8, !tbaa !1
  %373 = fsub double %370, %372
  %374 = fmul double %373, %373
  %375 = fadd double %367, %374
  %376 = add nuw nsw i64 %366, 1
  %377 = add i64 %368, -1
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %365, !llvm.loop !24

; <label>:379:                                    ; preds = %365
  br label %380

; <label>:380:                                    ; preds = %360, %379
  %381 = phi i64 [ 1, %360 ], [ %376, %379 ]
  %382 = phi double [ 0.000000e+00, %360 ], [ %375, %379 ]
  %383 = phi double [ undef, %360 ], [ %375, %379 ]
  %384 = icmp ult i64 %361, 3
  br i1 %384, label %487, label %385

; <label>:385:                                    ; preds = %380
  br label %450

; <label>:386:                                    ; preds = %446, %94
  %387 = phi i32 [ %391, %446 ], [ %95, %94 ]
  %388 = phi i64 [ %389, %446 ], [ 1, %94 ]
  %389 = add nuw nsw i64 %388, 1
  %390 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %389
  %391 = load i32, i32* %390, align 4, !tbaa !5
  %392 = icmp slt i32 %387, %391
  br i1 %392, label %393, label %446

; <label>:393:                                    ; preds = %386
  %394 = sext i32 %387 to i64
  %395 = sext i32 %391 to i64
  %396 = sub nsw i64 %395, %394
  %397 = add nsw i64 %395, -1
  %398 = and i64 %396, 1
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %412, label %400

; <label>:400:                                    ; preds = %393
  br label %401

; <label>:401:                                    ; preds = %400
  %402 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %394
  %403 = load double, double* %402, align 8, !tbaa !1
  %404 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %394
  %405 = load i32, i32* %404, align 4, !tbaa !5
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %406
  %408 = load double, double* %407, align 8, !tbaa !1
  %409 = fmul double %403, %408
  %410 = fadd double %409, 0.000000e+00
  %411 = add nsw i64 %394, 1
  br label %412

; <label>:412:                                    ; preds = %393, %401
  %413 = phi i64 [ %411, %401 ], [ %394, %393 ]
  %414 = phi double [ %410, %401 ], [ 0.000000e+00, %393 ]
  %415 = phi double [ %410, %401 ], [ undef, %393 ]
  br label %416

; <label>:416:                                    ; preds = %412
  %417 = icmp eq i64 %397, %394
  br i1 %417, label %444, label %418

; <label>:418:                                    ; preds = %416
  br label %419

; <label>:419:                                    ; preds = %419, %418
  %420 = phi i64 [ %413, %418 ], [ %441, %419 ]
  %421 = phi double [ %414, %418 ], [ %440, %419 ]
  %422 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %420
  %423 = load double, double* %422, align 8, !tbaa !1
  %424 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %420
  %425 = load i32, i32* %424, align 4, !tbaa !5
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %426
  %428 = load double, double* %427, align 8, !tbaa !1
  %429 = fmul double %423, %428
  %430 = fadd double %421, %429
  %431 = add nsw i64 %420, 1
  %432 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %431
  %433 = load double, double* %432, align 8, !tbaa !1
  %434 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %431
  %435 = load i32, i32* %434, align 4, !tbaa !5
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %436
  %438 = load double, double* %437, align 8, !tbaa !1
  %439 = fmul double %433, %438
  %440 = fadd double %430, %439
  %441 = add nsw i64 %420, 2
  %442 = icmp slt i64 %441, %395
  br i1 %442, label %419, label %443

; <label>:443:                                    ; preds = %419
  br label %444

; <label>:444:                                    ; preds = %416, %443
  %445 = phi double [ %415, %416 ], [ %440, %443 ]
  br label %446

; <label>:446:                                    ; preds = %444, %386
  %447 = phi double [ 0.000000e+00, %386 ], [ %445, %444 ]
  %448 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %388
  store double %447, double* %448, align 8, !tbaa !1
  %449 = icmp slt i64 %388, %46
  br i1 %449, label %386, label %358

; <label>:450:                                    ; preds = %450, %385
  %451 = phi i64 [ %381, %385 ], [ %484, %450 ]
  %452 = phi double [ %382, %385 ], [ %483, %450 ]
  %453 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %451
  %454 = load double, double* %453, align 8, !tbaa !1
  %455 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %451
  %456 = load double, double* %455, align 8, !tbaa !1
  %457 = fsub double %454, %456
  %458 = fmul double %457, %457
  %459 = fadd double %452, %458
  %460 = add nuw nsw i64 %451, 1
  %461 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %460
  %462 = load double, double* %461, align 8, !tbaa !1
  %463 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %460
  %464 = load double, double* %463, align 8, !tbaa !1
  %465 = fsub double %462, %464
  %466 = fmul double %465, %465
  %467 = fadd double %459, %466
  %468 = add nsw i64 %451, 2
  %469 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %468
  %470 = load double, double* %469, align 8, !tbaa !1
  %471 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %468
  %472 = load double, double* %471, align 8, !tbaa !1
  %473 = fsub double %470, %472
  %474 = fmul double %473, %473
  %475 = fadd double %467, %474
  %476 = add nsw i64 %451, 3
  %477 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %476
  %478 = load double, double* %477, align 8, !tbaa !1
  %479 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %476
  %480 = load double, double* %479, align 8, !tbaa !1
  %481 = fsub double %478, %480
  %482 = fmul double %481, %481
  %483 = fadd double %475, %482
  %484 = add nsw i64 %451, 4
  %485 = icmp slt i64 %476, %10
  br i1 %485, label %450, label %486

; <label>:486:                                    ; preds = %450
  br label %487

; <label>:487:                                    ; preds = %380, %486
  %488 = phi double [ %383, %380 ], [ %483, %486 ]
  br label %489

; <label>:489:                                    ; preds = %487, %359
  %490 = phi double [ 0.000000e+00, %359 ], [ %488, %487 ]
  %491 = tail call double @sqrt(double %490) #6
  store double %491, double* %0, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) local_unnamed_addr #2

declare void @timer_clear(i32) local_unnamed_addr #3

declare void @timer_start(i32) local_unnamed_addr #3

declare void @timer_stop(i32) local_unnamed_addr #3

declare double @timer_read(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare double @fabs(double) local_unnamed_addr #4

declare void @c_print_results(i8*, i8 signext, i32, i32, i32, i32, i32, double, double, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare double @pow(double, double) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }

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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !12, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !12, !8, !9}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !8, !9}
!23 = distinct !{!23, !12, !8, !9}
!24 = distinct !{!24, !14}
