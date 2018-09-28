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
@.str.21 = private unnamed_addr constant [5 x i8] c"-O3 \00", align 1
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
  br i1 %9, label %37, label %10

; <label>:10:                                     ; preds = %1
  %11 = sext i32 %8 to i64
  %12 = add nsw i64 %11, -1
  %13 = and i64 %11, 3
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %28, label %15

; <label>:15:                                     ; preds = %10
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

; <label>:28:                                     ; preds = %10, %27
  %29 = phi i64 [ 1, %10 ], [ %24, %27 ]
  %30 = phi double [ 0.000000e+00, %10 ], [ %23, %27 ]
  %31 = phi double [ undef, %10 ], [ %23, %27 ]
  %32 = icmp ult i64 %12, 3
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %28
  br label %284

; <label>:34:                                     ; preds = %284
  br label %35

; <label>:35:                                     ; preds = %28, %34
  %36 = phi double [ %31, %28 ], [ %305, %34 ]
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
  br i1 %44, label %67, label %46

; <label>:46:                                     ; preds = %37
  %47 = sext i32 %43 to i64
  %48 = sext i32 %8 to i64
  %49 = load i32, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  %50 = add nsw i64 %48, -1
  %51 = add nsw i64 %48, -4
  %52 = lshr i64 %51, 2
  %53 = and i64 %48, 3
  %54 = icmp eq i64 %53, 0
  %55 = icmp ult i64 %50, 3
  %56 = and i64 %48, 1
  %57 = icmp eq i64 %56, 0
  %58 = icmp eq i64 %50, 0
  %59 = icmp ult i32 %8, 4
  %60 = and i64 %48, -4
  %61 = icmp eq i64 %60, 0
  %62 = or i64 %60, 1
  %63 = and i64 %52, 1
  %64 = icmp eq i64 %63, 0
  %65 = icmp eq i64 %52, 0
  %66 = icmp eq i64 %48, %60
  br label %308

; <label>:67:                                     ; preds = %37
  %68 = sext i32 %8 to i64
  %69 = add nsw i64 %68, -1
  %70 = add nsw i64 %68, -4
  %71 = lshr i64 %70, 2
  %72 = and i64 %68, 3
  %73 = icmp eq i64 %72, 0
  %74 = icmp ult i64 %69, 3
  %75 = and i64 %68, 1
  %76 = icmp eq i64 %75, 0
  %77 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 1), align 8
  %78 = icmp eq i64 %69, 0
  %79 = icmp ult i32 %8, 4
  %80 = and i64 %68, -4
  %81 = icmp eq i64 %80, 0
  %82 = or i64 %80, 1
  %83 = and i64 %71, 1
  %84 = icmp eq i64 %83, 0
  %85 = icmp eq i64 %71, 0
  %86 = icmp eq i64 %68, %80
  br label %87

; <label>:87:                                     ; preds = %280, %67
  %88 = phi i32 [ %282, %280 ], [ 1, %67 ]
  %89 = phi double [ %281, %280 ], [ %38, %67 ]
  br i1 %9, label %280, label %90

; <label>:90:                                     ; preds = %87
  br i1 %73, label %106, label %91

; <label>:91:                                     ; preds = %90
  br label %92

; <label>:92:                                     ; preds = %92, %91
  %93 = phi i64 [ %102, %92 ], [ 1, %91 ]
  %94 = phi double [ %101, %92 ], [ 0.000000e+00, %91 ]
  %95 = phi i64 [ %103, %92 ], [ %72, %91 ]
  %96 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %93
  %97 = load double, double* %96, align 8, !tbaa !1
  %98 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %93
  %99 = load double, double* %98, align 8, !tbaa !1
  %100 = fmul double %97, %99
  %101 = fadd double %94, %100
  %102 = add nuw nsw i64 %93, 1
  %103 = add i64 %95, -1
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %92, !llvm.loop !21

; <label>:105:                                    ; preds = %92
  br label %106

; <label>:106:                                    ; preds = %90, %105
  %107 = phi i64 [ 1, %90 ], [ %102, %105 ]
  %108 = phi double [ 0.000000e+00, %90 ], [ %101, %105 ]
  %109 = phi double [ undef, %90 ], [ %101, %105 ]
  br i1 %74, label %144, label %110

; <label>:110:                                    ; preds = %106
  br label %111

; <label>:111:                                    ; preds = %111, %110
  %112 = phi i64 [ %107, %110 ], [ %141, %111 ]
  %113 = phi double [ %108, %110 ], [ %140, %111 ]
  %114 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %112
  %115 = load double, double* %114, align 8, !tbaa !1
  %116 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %112
  %117 = load double, double* %116, align 8, !tbaa !1
  %118 = fmul double %115, %117
  %119 = fadd double %113, %118
  %120 = add nuw nsw i64 %112, 1
  %121 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %120
  %122 = load double, double* %121, align 8, !tbaa !1
  %123 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %120
  %124 = load double, double* %123, align 8, !tbaa !1
  %125 = fmul double %122, %124
  %126 = fadd double %119, %125
  %127 = add nsw i64 %112, 2
  %128 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %127
  %129 = load double, double* %128, align 8, !tbaa !1
  %130 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %127
  %131 = load double, double* %130, align 8, !tbaa !1
  %132 = fmul double %129, %131
  %133 = fadd double %126, %132
  %134 = add nsw i64 %112, 3
  %135 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %134
  %136 = load double, double* %135, align 8, !tbaa !1
  %137 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %134
  %138 = load double, double* %137, align 8, !tbaa !1
  %139 = fmul double %136, %138
  %140 = fadd double %133, %139
  %141 = add nsw i64 %112, 4
  %142 = icmp slt i64 %134, %68
  br i1 %142, label %111, label %143

; <label>:143:                                    ; preds = %111
  br label %144

; <label>:144:                                    ; preds = %106, %143
  %145 = phi double [ %109, %106 ], [ %140, %143 ]
  %146 = fdiv double %89, %145
  br i1 %9, label %280, label %147

; <label>:147:                                    ; preds = %144
  br i1 %76, label %159, label %148

; <label>:148:                                    ; preds = %147
  br label %149

; <label>:149:                                    ; preds = %148
  %150 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1), align 8, !tbaa !1
  %151 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1), align 8, !tbaa !1
  %152 = fmul double %146, %151
  %153 = fadd double %150, %152
  store double %153, double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1), align 8, !tbaa !1
  %154 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1), align 8, !tbaa !1
  %155 = fmul double %146, %77
  %156 = fsub double %154, %155
  store double %156, double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1), align 8, !tbaa !1
  %157 = fmul double %156, %156
  %158 = fadd double %157, 0.000000e+00
  br label %159

; <label>:159:                                    ; preds = %147, %149
  %160 = phi i64 [ 2, %149 ], [ 1, %147 ]
  %161 = phi double [ %158, %149 ], [ 0.000000e+00, %147 ]
  %162 = phi double [ %158, %149 ], [ undef, %147 ]
  br label %163

; <label>:163:                                    ; preds = %159
  br i1 %78, label %200, label %164

; <label>:164:                                    ; preds = %163
  br label %165

; <label>:165:                                    ; preds = %165, %164
  %166 = phi i64 [ %160, %164 ], [ %197, %165 ]
  %167 = phi double [ %161, %164 ], [ %196, %165 ]
  %168 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %166
  %169 = load double, double* %168, align 8, !tbaa !1
  %170 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %166
  %171 = load double, double* %170, align 8, !tbaa !1
  %172 = fmul double %146, %171
  %173 = fadd double %169, %172
  store double %173, double* %168, align 8, !tbaa !1
  %174 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %166
  %175 = load double, double* %174, align 8, !tbaa !1
  %176 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %166
  %177 = load double, double* %176, align 8, !tbaa !1
  %178 = fmul double %146, %177
  %179 = fsub double %175, %178
  store double %179, double* %174, align 8, !tbaa !1
  %180 = fmul double %179, %179
  %181 = fadd double %167, %180
  %182 = add nuw nsw i64 %166, 1
  %183 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %182
  %184 = load double, double* %183, align 8, !tbaa !1
  %185 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %182
  %186 = load double, double* %185, align 8, !tbaa !1
  %187 = fmul double %146, %186
  %188 = fadd double %184, %187
  store double %188, double* %183, align 8, !tbaa !1
  %189 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %182
  %190 = load double, double* %189, align 8, !tbaa !1
  %191 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %182
  %192 = load double, double* %191, align 8, !tbaa !1
  %193 = fmul double %146, %192
  %194 = fsub double %190, %193
  store double %194, double* %189, align 8, !tbaa !1
  %195 = fmul double %194, %194
  %196 = fadd double %181, %195
  %197 = add nsw i64 %166, 2
  %198 = icmp slt i64 %182, %68
  br i1 %198, label %165, label %199

; <label>:199:                                    ; preds = %165
  br label %200

; <label>:200:                                    ; preds = %163, %199
  %201 = phi double [ %162, %163 ], [ %196, %199 ]
  %202 = fdiv double %201, %89
  br i1 %9, label %280, label %203

; <label>:203:                                    ; preds = %200
  br i1 %79, label %267, label %204

; <label>:204:                                    ; preds = %203
  br i1 %81, label %267, label %205

; <label>:205:                                    ; preds = %204
  %206 = insertelement <2 x double> undef, double %202, i32 0
  %207 = shufflevector <2 x double> %206, <2 x double> undef, <2 x i32> zeroinitializer
  br i1 %84, label %208, label %218

; <label>:208:                                    ; preds = %205
  br label %209

; <label>:209:                                    ; preds = %208
  %210 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %211 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %212 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %213 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %214 = fmul <2 x double> %207, %212
  %215 = fmul <2 x double> %207, %213
  %216 = fadd <2 x double> %210, %214
  %217 = fadd <2 x double> %211, %215
  store <2 x double> %216, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  store <2 x double> %217, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  br label %218

; <label>:218:                                    ; preds = %205, %209
  %219 = phi i64 [ 4, %209 ], [ 0, %205 ]
  br label %220

; <label>:220:                                    ; preds = %218
  br i1 %85, label %266, label %221

; <label>:221:                                    ; preds = %220
  br label %222

; <label>:222:                                    ; preds = %222, %221
  %223 = phi i64 [ %219, %221 ], [ %263, %222 ]
  %224 = or i64 %223, 1
  %225 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %224
  %226 = bitcast double* %225 to <2 x double>*
  %227 = load <2 x double>, <2 x double>* %226, align 8, !tbaa !1
  %228 = getelementptr double, double* %225, i64 2
  %229 = bitcast double* %228 to <2 x double>*
  %230 = load <2 x double>, <2 x double>* %229, align 8, !tbaa !1
  %231 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %224
  %232 = bitcast double* %231 to <2 x double>*
  %233 = load <2 x double>, <2 x double>* %232, align 8, !tbaa !1
  %234 = getelementptr double, double* %231, i64 2
  %235 = bitcast double* %234 to <2 x double>*
  %236 = load <2 x double>, <2 x double>* %235, align 8, !tbaa !1
  %237 = fmul <2 x double> %207, %233
  %238 = fmul <2 x double> %207, %236
  %239 = fadd <2 x double> %227, %237
  %240 = fadd <2 x double> %230, %238
  %241 = bitcast double* %231 to <2 x double>*
  store <2 x double> %239, <2 x double>* %241, align 8, !tbaa !1
  %242 = bitcast double* %234 to <2 x double>*
  store <2 x double> %240, <2 x double>* %242, align 8, !tbaa !1
  %243 = add i64 %223, 4
  %244 = or i64 %243, 1
  %245 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %244
  %246 = bitcast double* %245 to <2 x double>*
  %247 = load <2 x double>, <2 x double>* %246, align 8, !tbaa !1
  %248 = getelementptr double, double* %245, i64 2
  %249 = bitcast double* %248 to <2 x double>*
  %250 = load <2 x double>, <2 x double>* %249, align 8, !tbaa !1
  %251 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %244
  %252 = bitcast double* %251 to <2 x double>*
  %253 = load <2 x double>, <2 x double>* %252, align 8, !tbaa !1
  %254 = getelementptr double, double* %251, i64 2
  %255 = bitcast double* %254 to <2 x double>*
  %256 = load <2 x double>, <2 x double>* %255, align 8, !tbaa !1
  %257 = fmul <2 x double> %207, %253
  %258 = fmul <2 x double> %207, %256
  %259 = fadd <2 x double> %247, %257
  %260 = fadd <2 x double> %250, %258
  %261 = bitcast double* %251 to <2 x double>*
  store <2 x double> %259, <2 x double>* %261, align 8, !tbaa !1
  %262 = bitcast double* %254 to <2 x double>*
  store <2 x double> %260, <2 x double>* %262, align 8, !tbaa !1
  %263 = add i64 %223, 8
  %264 = icmp eq i64 %263, %80
  br i1 %264, label %265, label %222, !llvm.loop !22

; <label>:265:                                    ; preds = %222
  br label %266

; <label>:266:                                    ; preds = %220, %265
  br i1 %86, label %280, label %267

; <label>:267:                                    ; preds = %266, %204, %203
  %268 = phi i64 [ 1, %204 ], [ 1, %203 ], [ %82, %266 ]
  br label %269

; <label>:269:                                    ; preds = %267, %269
  %270 = phi i64 [ %277, %269 ], [ %268, %267 ]
  %271 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %270
  %272 = load double, double* %271, align 8, !tbaa !1
  %273 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %270
  %274 = load double, double* %273, align 8, !tbaa !1
  %275 = fmul double %202, %274
  %276 = fadd double %272, %275
  store double %276, double* %273, align 8, !tbaa !1
  %277 = add nuw nsw i64 %270, 1
  %278 = icmp slt i64 %270, %68
  br i1 %278, label %269, label %279, !llvm.loop !23

; <label>:279:                                    ; preds = %269
  br label %280

; <label>:280:                                    ; preds = %279, %266, %87, %144, %200
  %281 = phi double [ %201, %200 ], [ 0.000000e+00, %144 ], [ 0.000000e+00, %87 ], [ %201, %266 ], [ %201, %279 ]
  %282 = add nuw nsw i32 %88, 1
  %283 = icmp eq i32 %282, 26
  br i1 %283, label %311, label %87

; <label>:284:                                    ; preds = %284, %33
  %285 = phi i64 [ %29, %33 ], [ %306, %284 ]
  %286 = phi double [ %30, %33 ], [ %305, %284 ]
  %287 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %285
  %288 = load double, double* %287, align 8, !tbaa !1
  %289 = fmul double %288, %288
  %290 = fadd double %286, %289
  %291 = add nuw nsw i64 %285, 1
  %292 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %291
  %293 = load double, double* %292, align 8, !tbaa !1
  %294 = fmul double %293, %293
  %295 = fadd double %290, %294
  %296 = add nsw i64 %285, 2
  %297 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %296
  %298 = load double, double* %297, align 8, !tbaa !1
  %299 = fmul double %298, %298
  %300 = fadd double %295, %299
  %301 = add nsw i64 %285, 3
  %302 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %301
  %303 = load double, double* %302, align 8, !tbaa !1
  %304 = fmul double %303, %303
  %305 = fadd double %300, %304
  %306 = add nsw i64 %285, 4
  %307 = icmp slt i64 %301, %11
  br i1 %307, label %284, label %34

; <label>:308:                                    ; preds = %574, %46
  %309 = phi i32 [ %576, %574 ], [ 1, %46 ]
  %310 = phi double [ %575, %574 ], [ %38, %46 ]
  br label %340

; <label>:311:                                    ; preds = %280
  br label %313

; <label>:312:                                    ; preds = %574
  br label %313

; <label>:313:                                    ; preds = %312, %311
  %314 = add i32 %45, 25
  store i32 %314, i32* @conj_grad.callcount, align 4, !tbaa !5
  br i1 %44, label %579, label %315

; <label>:315:                                    ; preds = %313
  %316 = sext i32 %43 to i64
  %317 = load i32, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  br label %607

; <label>:318:                                    ; preds = %400
  br i1 %9, label %574, label %319

; <label>:319:                                    ; preds = %318
  br i1 %54, label %335, label %320

; <label>:320:                                    ; preds = %319
  br label %321

; <label>:321:                                    ; preds = %321, %320
  %322 = phi i64 [ %331, %321 ], [ 1, %320 ]
  %323 = phi double [ %330, %321 ], [ 0.000000e+00, %320 ]
  %324 = phi i64 [ %332, %321 ], [ %53, %320 ]
  %325 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %322
  %326 = load double, double* %325, align 8, !tbaa !1
  %327 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %322
  %328 = load double, double* %327, align 8, !tbaa !1
  %329 = fmul double %326, %328
  %330 = fadd double %323, %329
  %331 = add nuw nsw i64 %322, 1
  %332 = add i64 %324, -1
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %321, !llvm.loop !24

; <label>:334:                                    ; preds = %321
  br label %335

; <label>:335:                                    ; preds = %319, %334
  %336 = phi i64 [ 1, %319 ], [ %331, %334 ]
  %337 = phi double [ 0.000000e+00, %319 ], [ %330, %334 ]
  %338 = phi double [ undef, %319 ], [ %330, %334 ]
  br i1 %55, label %437, label %339

; <label>:339:                                    ; preds = %335
  br label %404

; <label>:340:                                    ; preds = %400, %308
  %341 = phi i32 [ %345, %400 ], [ %49, %308 ]
  %342 = phi i64 [ %343, %400 ], [ 1, %308 ]
  %343 = add nuw nsw i64 %342, 1
  %344 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4, !tbaa !5
  %346 = icmp slt i32 %341, %345
  br i1 %346, label %347, label %400

; <label>:347:                                    ; preds = %340
  %348 = sext i32 %341 to i64
  %349 = sext i32 %345 to i64
  %350 = sub nsw i64 %349, %348
  %351 = add nsw i64 %349, -1
  %352 = and i64 %350, 1
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %366, label %354

; <label>:354:                                    ; preds = %347
  br label %355

; <label>:355:                                    ; preds = %354
  %356 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %348
  %357 = load double, double* %356, align 8, !tbaa !1
  %358 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %348
  %359 = load i32, i32* %358, align 4, !tbaa !5
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %360
  %362 = load double, double* %361, align 8, !tbaa !1
  %363 = fmul double %357, %362
  %364 = fadd double %363, 0.000000e+00
  %365 = add nsw i64 %348, 1
  br label %366

; <label>:366:                                    ; preds = %347, %355
  %367 = phi i64 [ %365, %355 ], [ %348, %347 ]
  %368 = phi double [ %364, %355 ], [ 0.000000e+00, %347 ]
  %369 = phi double [ %364, %355 ], [ undef, %347 ]
  br label %370

; <label>:370:                                    ; preds = %366
  %371 = icmp eq i64 %351, %348
  br i1 %371, label %398, label %372

; <label>:372:                                    ; preds = %370
  br label %373

; <label>:373:                                    ; preds = %373, %372
  %374 = phi i64 [ %367, %372 ], [ %395, %373 ]
  %375 = phi double [ %368, %372 ], [ %394, %373 ]
  %376 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %374
  %377 = load double, double* %376, align 8, !tbaa !1
  %378 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %374
  %379 = load i32, i32* %378, align 4, !tbaa !5
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %380
  %382 = load double, double* %381, align 8, !tbaa !1
  %383 = fmul double %377, %382
  %384 = fadd double %375, %383
  %385 = add nsw i64 %374, 1
  %386 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %385
  %387 = load double, double* %386, align 8, !tbaa !1
  %388 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %385
  %389 = load i32, i32* %388, align 4, !tbaa !5
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %390
  %392 = load double, double* %391, align 8, !tbaa !1
  %393 = fmul double %387, %392
  %394 = fadd double %384, %393
  %395 = add nsw i64 %374, 2
  %396 = icmp slt i64 %395, %349
  br i1 %396, label %373, label %397

; <label>:397:                                    ; preds = %373
  br label %398

; <label>:398:                                    ; preds = %370, %397
  %399 = phi double [ %369, %370 ], [ %394, %397 ]
  br label %400

; <label>:400:                                    ; preds = %398, %340
  %401 = phi double [ 0.000000e+00, %340 ], [ %399, %398 ]
  %402 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %342
  store double %401, double* %402, align 8, !tbaa !1
  %403 = icmp slt i64 %342, %47
  br i1 %403, label %340, label %318

; <label>:404:                                    ; preds = %404, %339
  %405 = phi i64 [ %336, %339 ], [ %434, %404 ]
  %406 = phi double [ %337, %339 ], [ %433, %404 ]
  %407 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %405
  %408 = load double, double* %407, align 8, !tbaa !1
  %409 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %405
  %410 = load double, double* %409, align 8, !tbaa !1
  %411 = fmul double %408, %410
  %412 = fadd double %406, %411
  %413 = add nuw nsw i64 %405, 1
  %414 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %413
  %415 = load double, double* %414, align 8, !tbaa !1
  %416 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %413
  %417 = load double, double* %416, align 8, !tbaa !1
  %418 = fmul double %415, %417
  %419 = fadd double %412, %418
  %420 = add nsw i64 %405, 2
  %421 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %420
  %422 = load double, double* %421, align 8, !tbaa !1
  %423 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %420
  %424 = load double, double* %423, align 8, !tbaa !1
  %425 = fmul double %422, %424
  %426 = fadd double %419, %425
  %427 = add nsw i64 %405, 3
  %428 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %427
  %429 = load double, double* %428, align 8, !tbaa !1
  %430 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %427
  %431 = load double, double* %430, align 8, !tbaa !1
  %432 = fmul double %429, %431
  %433 = fadd double %426, %432
  %434 = add nsw i64 %405, 4
  %435 = icmp slt i64 %427, %48
  br i1 %435, label %404, label %436

; <label>:436:                                    ; preds = %404
  br label %437

; <label>:437:                                    ; preds = %335, %436
  %438 = phi double [ %338, %335 ], [ %433, %436 ]
  %439 = fdiv double %310, %438
  br i1 %9, label %574, label %440

; <label>:440:                                    ; preds = %437
  br i1 %57, label %453, label %441

; <label>:441:                                    ; preds = %440
  br label %442

; <label>:442:                                    ; preds = %441
  %443 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1), align 8, !tbaa !1
  %444 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1), align 8, !tbaa !1
  %445 = fmul double %439, %444
  %446 = fadd double %443, %445
  store double %446, double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1), align 8, !tbaa !1
  %447 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1), align 8, !tbaa !1
  %448 = load double, double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 1), align 8, !tbaa !1
  %449 = fmul double %439, %448
  %450 = fsub double %447, %449
  store double %450, double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1), align 8, !tbaa !1
  %451 = fmul double %450, %450
  %452 = fadd double %451, 0.000000e+00
  br label %453

; <label>:453:                                    ; preds = %440, %442
  %454 = phi i64 [ 2, %442 ], [ 1, %440 ]
  %455 = phi double [ %452, %442 ], [ 0.000000e+00, %440 ]
  %456 = phi double [ %452, %442 ], [ undef, %440 ]
  br label %457

; <label>:457:                                    ; preds = %453
  br i1 %58, label %494, label %458

; <label>:458:                                    ; preds = %457
  br label %459

; <label>:459:                                    ; preds = %459, %458
  %460 = phi i64 [ %454, %458 ], [ %491, %459 ]
  %461 = phi double [ %455, %458 ], [ %490, %459 ]
  %462 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %460
  %463 = load double, double* %462, align 8, !tbaa !1
  %464 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %460
  %465 = load double, double* %464, align 8, !tbaa !1
  %466 = fmul double %439, %465
  %467 = fadd double %463, %466
  store double %467, double* %462, align 8, !tbaa !1
  %468 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %460
  %469 = load double, double* %468, align 8, !tbaa !1
  %470 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %460
  %471 = load double, double* %470, align 8, !tbaa !1
  %472 = fmul double %439, %471
  %473 = fsub double %469, %472
  store double %473, double* %468, align 8, !tbaa !1
  %474 = fmul double %473, %473
  %475 = fadd double %461, %474
  %476 = add nuw nsw i64 %460, 1
  %477 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %476
  %478 = load double, double* %477, align 8, !tbaa !1
  %479 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %476
  %480 = load double, double* %479, align 8, !tbaa !1
  %481 = fmul double %439, %480
  %482 = fadd double %478, %481
  store double %482, double* %477, align 8, !tbaa !1
  %483 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %476
  %484 = load double, double* %483, align 8, !tbaa !1
  %485 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %476
  %486 = load double, double* %485, align 8, !tbaa !1
  %487 = fmul double %439, %486
  %488 = fsub double %484, %487
  store double %488, double* %483, align 8, !tbaa !1
  %489 = fmul double %488, %488
  %490 = fadd double %475, %489
  %491 = add nsw i64 %460, 2
  %492 = icmp slt i64 %476, %48
  br i1 %492, label %459, label %493

; <label>:493:                                    ; preds = %459
  br label %494

; <label>:494:                                    ; preds = %457, %493
  %495 = phi double [ %456, %457 ], [ %490, %493 ]
  %496 = fdiv double %495, %310
  br i1 %9, label %574, label %497

; <label>:497:                                    ; preds = %494
  br i1 %59, label %561, label %498

; <label>:498:                                    ; preds = %497
  br i1 %61, label %561, label %499

; <label>:499:                                    ; preds = %498
  %500 = insertelement <2 x double> undef, double %496, i32 0
  %501 = shufflevector <2 x double> %500, <2 x double> undef, <2 x i32> zeroinitializer
  br i1 %64, label %502, label %512

; <label>:502:                                    ; preds = %499
  br label %503

; <label>:503:                                    ; preds = %502
  %504 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %505 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %506 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  %507 = load <2 x double>, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  %508 = fmul <2 x double> %501, %506
  %509 = fmul <2 x double> %501, %507
  %510 = fadd <2 x double> %504, %508
  %511 = fadd <2 x double> %505, %509
  store <2 x double> %510, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to <2 x double>*), align 8, !tbaa !1
  store <2 x double> %511, <2 x double>* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 3) to <2 x double>*), align 8, !tbaa !1
  br label %512

; <label>:512:                                    ; preds = %499, %503
  %513 = phi i64 [ 4, %503 ], [ 0, %499 ]
  br label %514

; <label>:514:                                    ; preds = %512
  br i1 %65, label %560, label %515

; <label>:515:                                    ; preds = %514
  br label %516

; <label>:516:                                    ; preds = %516, %515
  %517 = phi i64 [ %513, %515 ], [ %557, %516 ]
  %518 = or i64 %517, 1
  %519 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %518
  %520 = bitcast double* %519 to <2 x double>*
  %521 = load <2 x double>, <2 x double>* %520, align 8, !tbaa !1
  %522 = getelementptr double, double* %519, i64 2
  %523 = bitcast double* %522 to <2 x double>*
  %524 = load <2 x double>, <2 x double>* %523, align 8, !tbaa !1
  %525 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %518
  %526 = bitcast double* %525 to <2 x double>*
  %527 = load <2 x double>, <2 x double>* %526, align 8, !tbaa !1
  %528 = getelementptr double, double* %525, i64 2
  %529 = bitcast double* %528 to <2 x double>*
  %530 = load <2 x double>, <2 x double>* %529, align 8, !tbaa !1
  %531 = fmul <2 x double> %501, %527
  %532 = fmul <2 x double> %501, %530
  %533 = fadd <2 x double> %521, %531
  %534 = fadd <2 x double> %524, %532
  %535 = bitcast double* %525 to <2 x double>*
  store <2 x double> %533, <2 x double>* %535, align 8, !tbaa !1
  %536 = bitcast double* %528 to <2 x double>*
  store <2 x double> %534, <2 x double>* %536, align 8, !tbaa !1
  %537 = add i64 %517, 4
  %538 = or i64 %537, 1
  %539 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %538
  %540 = bitcast double* %539 to <2 x double>*
  %541 = load <2 x double>, <2 x double>* %540, align 8, !tbaa !1
  %542 = getelementptr double, double* %539, i64 2
  %543 = bitcast double* %542 to <2 x double>*
  %544 = load <2 x double>, <2 x double>* %543, align 8, !tbaa !1
  %545 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %538
  %546 = bitcast double* %545 to <2 x double>*
  %547 = load <2 x double>, <2 x double>* %546, align 8, !tbaa !1
  %548 = getelementptr double, double* %545, i64 2
  %549 = bitcast double* %548 to <2 x double>*
  %550 = load <2 x double>, <2 x double>* %549, align 8, !tbaa !1
  %551 = fmul <2 x double> %501, %547
  %552 = fmul <2 x double> %501, %550
  %553 = fadd <2 x double> %541, %551
  %554 = fadd <2 x double> %544, %552
  %555 = bitcast double* %545 to <2 x double>*
  store <2 x double> %553, <2 x double>* %555, align 8, !tbaa !1
  %556 = bitcast double* %548 to <2 x double>*
  store <2 x double> %554, <2 x double>* %556, align 8, !tbaa !1
  %557 = add i64 %517, 8
  %558 = icmp eq i64 %557, %60
  br i1 %558, label %559, label %516, !llvm.loop !25

; <label>:559:                                    ; preds = %516
  br label %560

; <label>:560:                                    ; preds = %514, %559
  br i1 %66, label %574, label %561

; <label>:561:                                    ; preds = %560, %498, %497
  %562 = phi i64 [ 1, %498 ], [ 1, %497 ], [ %62, %560 ]
  br label %563

; <label>:563:                                    ; preds = %561, %563
  %564 = phi i64 [ %571, %563 ], [ %562, %561 ]
  %565 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %564
  %566 = load double, double* %565, align 8, !tbaa !1
  %567 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %564
  %568 = load double, double* %567, align 8, !tbaa !1
  %569 = fmul double %496, %568
  %570 = fadd double %566, %569
  store double %570, double* %567, align 8, !tbaa !1
  %571 = add nuw nsw i64 %564, 1
  %572 = icmp slt i64 %564, %48
  br i1 %572, label %563, label %573, !llvm.loop !26

; <label>:573:                                    ; preds = %563
  br label %574

; <label>:574:                                    ; preds = %573, %560, %318, %437, %494
  %575 = phi double [ %495, %494 ], [ 0.000000e+00, %437 ], [ 0.000000e+00, %318 ], [ %495, %560 ], [ %495, %573 ]
  %576 = add nuw nsw i32 %309, 1
  %577 = icmp eq i32 %576, 26
  br i1 %577, label %312, label %308

; <label>:578:                                    ; preds = %667
  br label %579

; <label>:579:                                    ; preds = %578, %313
  br i1 %9, label %710, label %580

; <label>:580:                                    ; preds = %579
  %581 = sext i32 %8 to i64
  %582 = add nsw i64 %581, -1
  %583 = and i64 %581, 3
  %584 = icmp eq i64 %583, 0
  br i1 %584, label %601, label %585

; <label>:585:                                    ; preds = %580
  br label %586

; <label>:586:                                    ; preds = %586, %585
  %587 = phi i64 [ %597, %586 ], [ 1, %585 ]
  %588 = phi double [ %596, %586 ], [ 0.000000e+00, %585 ]
  %589 = phi i64 [ %598, %586 ], [ %583, %585 ]
  %590 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %587
  %591 = load double, double* %590, align 8, !tbaa !1
  %592 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %587
  %593 = load double, double* %592, align 8, !tbaa !1
  %594 = fsub double %591, %593
  %595 = fmul double %594, %594
  %596 = fadd double %588, %595
  %597 = add nuw nsw i64 %587, 1
  %598 = add i64 %589, -1
  %599 = icmp eq i64 %598, 0
  br i1 %599, label %600, label %586, !llvm.loop !27

; <label>:600:                                    ; preds = %586
  br label %601

; <label>:601:                                    ; preds = %580, %600
  %602 = phi i64 [ 1, %580 ], [ %597, %600 ]
  %603 = phi double [ 0.000000e+00, %580 ], [ %596, %600 ]
  %604 = phi double [ undef, %580 ], [ %596, %600 ]
  %605 = icmp ult i64 %582, 3
  br i1 %605, label %708, label %606

; <label>:606:                                    ; preds = %601
  br label %671

; <label>:607:                                    ; preds = %667, %315
  %608 = phi i32 [ %612, %667 ], [ %317, %315 ]
  %609 = phi i64 [ %610, %667 ], [ 1, %315 ]
  %610 = add nuw nsw i64 %609, 1
  %611 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %610
  %612 = load i32, i32* %611, align 4, !tbaa !5
  %613 = icmp slt i32 %608, %612
  br i1 %613, label %614, label %667

; <label>:614:                                    ; preds = %607
  %615 = sext i32 %608 to i64
  %616 = sext i32 %612 to i64
  %617 = sub nsw i64 %616, %615
  %618 = add nsw i64 %616, -1
  %619 = and i64 %617, 1
  %620 = icmp eq i64 %619, 0
  br i1 %620, label %633, label %621

; <label>:621:                                    ; preds = %614
  br label %622

; <label>:622:                                    ; preds = %621
  %623 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %615
  %624 = load double, double* %623, align 8, !tbaa !1
  %625 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %615
  %626 = load i32, i32* %625, align 4, !tbaa !5
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %627
  %629 = load double, double* %628, align 8, !tbaa !1
  %630 = fmul double %624, %629
  %631 = fadd double %630, 0.000000e+00
  %632 = add nsw i64 %615, 1
  br label %633

; <label>:633:                                    ; preds = %614, %622
  %634 = phi i64 [ %632, %622 ], [ %615, %614 ]
  %635 = phi double [ %631, %622 ], [ 0.000000e+00, %614 ]
  %636 = phi double [ %631, %622 ], [ undef, %614 ]
  br label %637

; <label>:637:                                    ; preds = %633
  %638 = icmp eq i64 %618, %615
  br i1 %638, label %665, label %639

; <label>:639:                                    ; preds = %637
  br label %640

; <label>:640:                                    ; preds = %640, %639
  %641 = phi i64 [ %634, %639 ], [ %662, %640 ]
  %642 = phi double [ %635, %639 ], [ %661, %640 ]
  %643 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %641
  %644 = load double, double* %643, align 8, !tbaa !1
  %645 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %641
  %646 = load i32, i32* %645, align 4, !tbaa !5
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %647
  %649 = load double, double* %648, align 8, !tbaa !1
  %650 = fmul double %644, %649
  %651 = fadd double %642, %650
  %652 = add nsw i64 %641, 1
  %653 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %652
  %654 = load double, double* %653, align 8, !tbaa !1
  %655 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %652
  %656 = load i32, i32* %655, align 4, !tbaa !5
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %657
  %659 = load double, double* %658, align 8, !tbaa !1
  %660 = fmul double %654, %659
  %661 = fadd double %651, %660
  %662 = add nsw i64 %641, 2
  %663 = icmp slt i64 %662, %616
  br i1 %663, label %640, label %664

; <label>:664:                                    ; preds = %640
  br label %665

; <label>:665:                                    ; preds = %637, %664
  %666 = phi double [ %636, %637 ], [ %661, %664 ]
  br label %667

; <label>:667:                                    ; preds = %665, %607
  %668 = phi double [ 0.000000e+00, %607 ], [ %666, %665 ]
  %669 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %609
  store double %668, double* %669, align 8, !tbaa !1
  %670 = icmp slt i64 %609, %316
  br i1 %670, label %607, label %578

; <label>:671:                                    ; preds = %671, %606
  %672 = phi i64 [ %602, %606 ], [ %705, %671 ]
  %673 = phi double [ %603, %606 ], [ %704, %671 ]
  %674 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %672
  %675 = load double, double* %674, align 8, !tbaa !1
  %676 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %672
  %677 = load double, double* %676, align 8, !tbaa !1
  %678 = fsub double %675, %677
  %679 = fmul double %678, %678
  %680 = fadd double %673, %679
  %681 = add nuw nsw i64 %672, 1
  %682 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %681
  %683 = load double, double* %682, align 8, !tbaa !1
  %684 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %681
  %685 = load double, double* %684, align 8, !tbaa !1
  %686 = fsub double %683, %685
  %687 = fmul double %686, %686
  %688 = fadd double %680, %687
  %689 = add nsw i64 %672, 2
  %690 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %689
  %691 = load double, double* %690, align 8, !tbaa !1
  %692 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %689
  %693 = load double, double* %692, align 8, !tbaa !1
  %694 = fsub double %691, %693
  %695 = fmul double %694, %694
  %696 = fadd double %688, %695
  %697 = add nsw i64 %672, 3
  %698 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %697
  %699 = load double, double* %698, align 8, !tbaa !1
  %700 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %697
  %701 = load double, double* %700, align 8, !tbaa !1
  %702 = fsub double %699, %701
  %703 = fmul double %702, %702
  %704 = fadd double %696, %703
  %705 = add nsw i64 %672, 4
  %706 = icmp slt i64 %697, %581
  br i1 %706, label %671, label %707

; <label>:707:                                    ; preds = %671
  br label %708

; <label>:708:                                    ; preds = %601, %707
  %709 = phi double [ %604, %601 ], [ %704, %707 ]
  br label %710

; <label>:710:                                    ; preds = %708, %579
  %711 = phi double [ 0.000000e+00, %579 ], [ %709, %708 ]
  %712 = tail call double @sqrt(double %711) #6
  store double %712, double* %0, align 8, !tbaa !1
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
!25 = distinct !{!25, !8, !9}
!26 = distinct !{!26, !12, !8, !9}
!27 = distinct !{!27, !14}
